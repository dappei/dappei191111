package com.web.login.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.web.login.model.MemberBean;
import com.web.login.service.MemberService;



@Controller
@SessionAttributes({ "currentUser", "email" })
public class MemberController {
	MemberService service;

	@Autowired
	public void setService(MemberService service) {
		this.service = service;
	}

	ServletContext context;

	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}

	// 取得會員大頭貼
	@GetMapping(value = "/memberPhoto/{mid}", produces = "image/png")
	public void showPhotos(@PathVariable("mid") Integer userId,
			HttpServletResponse response) {
		try {
			Blob b =service.getphotoById(userId);
			InputStream is = null;
			if(b == null) {
				File file = new File("\\src\\main\\webapp\\resources\\images\\NoImage.jpg");
				is =   new FileInputStream(file);;
			}else {
				is = b.getBinaryStream();
			}
			
			ServletOutputStream os = response.getOutputStream();
			int length;
			byte[] buf = new byte[1024];
			while ((length = is.read(buf)) != -1) {
				os.write(buf, 0, length);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 會員註冊
	@RequestMapping(value = "/members/add", method = RequestMethod.GET)
	public String getAddNewMemberForm(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("memberBean", mb);
		return "login/addMember";
	}

	@RequestMapping(value = "/members/add", method = RequestMethod.POST)
	public String processAddNewMemberForm(@ModelAttribute("memberBean") MemberBean mb) {
		MultipartFile picture = mb.getMemberImage();
		String originalFilename = picture.getOriginalFilename();
		mb.setFilename(originalFilename);
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (picture != null && !picture.isEmpty()) {
			try {
				byte[] b = picture.getBytes();
				Blob blob = new SerialBlob(b);
				mb.setFacepic(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}

		}
		service.saveMember(mb);
		
		final String Email = "dappei109@gmail.com";// your Gmail
		final String EmailPwd ="eeit_109";// your password
		String host = "smtp.gmail.com";
		int port = 587;

		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.port", port);
		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(Email, EmailPwd);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(Email));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mb.getEmail()));
			message.setSubject("驗證信");//主旨
			message.setText("請點選以下連結驗證帳號");//訊息

			Transport transport = session.getTransport("smtp");
			transport.connect(host, port, Email, EmailPwd);

			Transport.send(message);

			System.out.println("寄送email結束.");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		
		
		return "redirect:/";
	}

//修改會員資料
	// 當使用者需要修改時，本方法送回含有會員資料的表單，讓使用者進行修改
	// 由這個方法送回修改記錄的表單...
	@RequestMapping(value ="/member/{id}", method = RequestMethod.GET)
	public String showDataForm(@PathVariable("id") Integer memberId, Model model) {
		MemberBean mb = service.getMemberById(memberId);
		model.addAttribute(mb);
		return "login/addMember";
	}
				
	@RequestMapping("/members")
	public String list(Model model) {
		List<MemberBean> list = service.getAllMembers();
		model.addAttribute("members", list);
		return "login/members";
	}
	@RequestMapping("personalPg")
	public String personalPg() {
		return "login/personalPg";
	}
	// 會員登入
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String toLogin(Model model) {
			MemberBean mb = new MemberBean();
			model.addAttribute("memberBean2", mb);
			return "login/login";
		}

		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String login(Model model, @ModelAttribute("memberBean2") MemberBean mb) {
			// member會自己註入session中
			// 將account放入session作用域中，這樣轉發頁面也可以取到這個數據。
			MemberBean checkId = service.checkIDPassword(mb.getEmail(), mb.getPassword());
			if (checkId != null) {
				model.addAttribute("currentUser", checkId);
				return "redirect:/";
			} else {
				model.addAttribute("loginerror", "登入失敗，請重新輸入");
				return "login/login";
			}
		}

		@RequestMapping("logout")
		public String outLogin(HttpSession session, SessionStatus sessionStatus) {
			session.removeAttribute("currentUser");// 我這裡是先取出httpsession中的user屬性
			session.invalidate(); // 然後是讓httpsession失效
			sessionStatus.setComplete();// 最後是呼叫sessionStatus方法
			return "redirect:/";
		}
		
		
		

}
