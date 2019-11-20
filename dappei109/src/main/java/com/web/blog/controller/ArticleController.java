package com.web.blog.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.web.blog.model.ArticleBean;
import com.web.blog.model.CategoryBean;
import com.web.blog.model.CommentBean;
import com.web.blog.service.ArticleService;
import com.web.blog.util.JSONFileUpload;
import com.web.login.model.MemberBean;

@Controller
public class ArticleController {
	ArticleService service;
	ServletContext context;

	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}

	@Autowired
	public void setService(ArticleService service) {
		this.service = service;
	}

	
	
	
	// 顯示單一部落格文章內容
	@RequestMapping(value = "/getSingleBlog")
	public String blog(@RequestParam(value = "articleId") Integer articleId, Model model) {
		ArticleBean bb = service.getProductById(articleId);
		model.addAttribute("product", bb);
		model.addAttribute("commentBean", new CommentBean());
		
		//List<CommentBean> art = service.getCommentById(articleId);
		model.addAttribute("comment", bb.getComments());
		
		return "blog/blog1";
	}

	// 顯示新增文章頁面及分類
	@RequestMapping(value = "/blog/add")
	public String getAddNewProductForm(Model model) {
		List<String> categoryList = service.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		

		return "/blog/addArticle";
	}

	// 新增部落格文章
	@RequestMapping(value = "/blog/addArticle", method = RequestMethod.POST)
	public String processAddNewProductForm(Model model ,HttpServletRequest request,
										   HttpServletRequest req,
									       @RequestParam String title,
									       @RequestParam Integer categoryId,
									       @RequestParam String author,
									       @RequestParam String articlecontent,
										   @RequestParam MultipartFile coverImage) {

		//確認會員是否有登入
		MemberBean mb=(MemberBean)req.getSession().getAttribute("currentUser");
		//沒有登入mb值會是null，轉跳回登入畫面做登入
		if(mb==null) {
				return "redirect:/login";
				}
		model.addAttribute("memberBean", mb);
		
		
		ArticleBean articleBean = new ArticleBean();
		articleBean.setMemberId(mb.getMemberId());
		String originalFilename = coverImage.getOriginalFilename();
		articleBean.setTitle(title);

		// 作弊自己 insert categoryId
		// articleBean.setCategoryId(categoryId);

		// Hibernate 實作一對多
		CategoryBean categoryBean = service.findByCategoryId(categoryId);
		articleBean.setcategoryBean(categoryBean);
		articleBean.setAuthor(author);
		articleBean.setArticlecontent(articlecontent);
		articleBean.setFileName(originalFilename);


		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (coverImage != null && !coverImage.isEmpty()) {
			try {
				byte[] b = coverImage.getBytes();
				Blob blob = new SerialBlob(b);
				articleBean.setCoverImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		service.addArticle(articleBean);
		return "redirect:/blog";
	}
	
//	修改部落格文章
//	點選按鈕的路徑必須命名以value="命名按鈕的名字好做啟動"
	@RequestMapping(value = "/Article/update")
	public String update(Model model , HttpServletRequest request, 
			@RequestParam(value = "articleid") Integer articleid) {
		
		List<String> categoryList = service.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		
//		String articleid = request.getParameter("articleid");
		
		ArticleBean articleBean = service.getProductById(articleid);		
		
	
		model.addAttribute("articleBean", articleBean);

		return "/blog/updateArticle";
	}
	
	@RequestMapping(value="/Article/updateArtilce", method = RequestMethod.POST)
	public String update2(Model model, 
//			@ModelAttribute("ArticleBean") ArticleBean articleBean, 
			HttpServletRequest request
			){
		ArticleBean articleBean = new ArticleBean();
		
		String articleid = request.getParameter("articleid");
		String title = request.getParameter("title");
		String articlecontent = request.getParameter("articlecontent");
		String author = request.getParameter("author");
		

		articleBean.setArticleid(Integer.parseInt(articleid));
		articleBean.setTitle(title);
		articleBean.setArticlecontent(articlecontent);
		articleBean.setAuthor(author);
		
		service.updateArticle(articleBean, Integer.parseInt(articleid));
		
		
		List<ArticleBean> bd = service.getAllProducts();
		
		model.addAttribute("bd", bd);
		
		return "redirect:/blog";
	
	
	}
	
	@RequestMapping(value = "/getPicture/{articleId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer articleId) {
		String filePath = "/resources/images/NoImage.jpg";

		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ArticleBean bean = service.getProductById(articleId);
		if (bean != null) {
			Blob blob = bean.getCoverImage();
			filename = bean.getFileName();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len);
				} catch (SQLException e) {
					throw new RuntimeException("ArticleController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	private byte[] toByteArray(String filepath) {
		byte[] b = null;
		String realPath = context.getRealPath(filepath);
//		System.out.println("realPath: " + realPath);
//		System.out.println("filepath: " + filepath);
		try {
			File file = new File(realPath);
			long size = file.length();
			b = new byte[(int) size];
			System.out.println("b: " + b);
			System.out.println("size: " + size);
			InputStream fis = context.getResourceAsStream(filepath);
			fis.read(b);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return b;
	}
	
	// 頁面產生分類可供 user 點選
	@RequestMapping(value = "/category" )
	public String getCategoryList(Model model) {
		List<String>  list = service.getAllCategories();
		model.addAttribute("categoryList", list);

		return "types/category";
	}
	
	//分類查詢
	@RequestMapping("/products/{category}")
	public String getArticleByCategory(
			@PathVariable("category") Integer categoryId , Model model ) {
		
		List<ArticleBean> aa = service.getArticleByCategory(categoryId);
		
		
		model.addAttribute("category",aa);

		return	"blog/article";
		
	}
	
	
	// 限制文字內容字數
	@RequestMapping("/blog")
	public String list(HttpSession session,Model model) {
		List<String>  list1 = service.getAllCategories();
		
		List<ArticleBean> list = service.getAllProducts();
		for (ArticleBean bb : list) {
			int contentLength = bb.getArticlecontent().length();
			String articleShortContent;
			if (contentLength < 30) {
				articleShortContent = bb.getArticlecontent();
			} else {
				articleShortContent = bb.getArticlecontent().substring(0, 30);
			}
			bb.setArticleShortContent(articleShortContent);
		}

		model.addAttribute("products", list);
		model.addAttribute("categoryList", list1);
		//判斷會員是否登入而顯示新增文章按鈕
		Object obj = session.getAttribute("currentUser");
		if(obj != null) 
		{
			model.addAttribute("isLogin", true);
		}
		else
		{
			model.addAttribute("isLogin", false);
		}
		return "blog/blog";
	}

	// CKEditor Insert BlogContent
	@RequestMapping("/blogInsert")
	 public void blogInsert(@RequestParam("upload") MultipartFile upload,
	        HttpServletRequest request,
	        HttpServletResponse response) throws ServletException, IOException {
	  String ext = context.getMimeType(upload.getOriginalFilename());
	  ext = ext.substring(6);
	  Date date = new Date();
	  String filename = String.valueOf(date.getTime() + "." + ext);
	        
	        InputStream in = upload.getInputStream();
	        String basePath = "C:\\Users\\User\\Desktop\\imagesCK\\";
	        System.out.println("basePath:" + basePath);
	        File outputFilePath = new File(basePath + filename);
	        OutputStream output = new FileOutputStream(outputFilePath);
	        byte[] buff = new byte[1024];
	        int length;
	        while ((length = in.read(buff)) != -1) {
	            output.write(buff, 0, length);
	        }
	        output.close();
	        in.close();
	        
	        Gson gson = new Gson();
	        PrintWriter out = response.getWriter();
	        out.print(gson.toJson(new JSONFileUpload(basePath + filename)));
	        out.flush();
	        out.close();
	 }

	
	@RequestMapping(value = "/blog/addComment", method = RequestMethod.POST)
	public String processAddNewReply(HttpServletRequest request, Model model,
			@ModelAttribute("commentBean") CommentBean commentBean
//		       									@RequestParam String commentName,
//		       									@RequestParam String comment,
//		       									@RequestParam Integer articleId
		       									) {
		
				
				//尋找單筆文章準備在下方留言
				ArticleBean bb = service.getProductById(commentBean.getArtId());
				System.out.println("article Id: " + commentBean.getArtId());
				model.addAttribute("product", bb);
				
				//新增留言
//				CommentBean commentBean = new CommentBean();
				
				commentBean.setCommentName(commentBean.getCommentName());
				commentBean.setComment(commentBean.getComment());

				System.out.println("add前");
				service.addComment(commentBean);
				System.out.println("add後");


				return "redirect:/getSingleBlog?articleId=" + commentBean.getArtId();
			}


	// CKEditor Browse BlogPicture
	@RequestMapping("/blogBrowse")
	 public String blogBrowse(HttpServletRequest request, Model model) {
	  String basePath = "C:\\Users\\User\\Desktop\\imagesCK\\";
	        File folder = new File(basePath);
	        model.addAttribute("files", folder.listFiles());
	        model.addAttribute("CKEditorFuncNum", request.getParameter("CKEditorFuncNum"));

	  return "browsefile";
	 }

	
	@RequestMapping(value = "/blogOderedRec", method = RequestMethod.GET)
	public String getarticlelist(Model model,HttpServletRequest req) {
		MemberBean mb=(MemberBean)req.getSession().getAttribute("currentUser");	
		//沒有登入mb值會是null，轉跳回登入畫面做登入
		if(mb==null) {
			return "redirect:/login";
		}
		
		Collection<ArticleBean> ez=service.getmyblog(mb.getMemberId());	
		model.addAttribute("myblog", ez);
		return "login/myBlog";	
		
	}
	
}
