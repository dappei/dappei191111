package com.web.login.dao.impl;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.login.dao.MemberDao;
import com.web.login.exception.MemberNotFoundException;
import com.web.login.model.MemberBean;

@Repository
public class MemberDaoImpl implements MemberDao {

	SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	// 會員註冊
	@Override
	public void saveMember(MemberBean mb) {
		Session session = factory.getCurrentSession();
		session.save(mb);
	}

	// 判斷參數account(會員帳號)是否已經被現有客戶使用，如果是，傳回true，表示此account不能使用，
	// 否則傳回false，表示此id可使用。
	@Override
	public boolean idExists(MemberBean mb) {
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean m WHERE m.email = :memail";
		boolean exist = false;
		MemberBean result = (MemberBean) session.createQuery(hql).setParameter("memail", mb.getEmail()).uniqueResult();
		if (result != null) {
			exist = true;
		}
		return exist;
	}

	// 檢查使用者在登入時輸入的帳號與密碼是否正確。如果正確，傳回該帳號所對應的MemberBean物件，
	// 否則傳回 null。
	@Override
	public MemberBean checkIDPassword(String email, String password) {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean m WHERE m.email = :memail and m.password = :mpassword";
		mb = (MemberBean) session.createQuery(hql).setParameter("memail", email).setParameter("mpassword", password)
				.uniqueResult();
		return mb;
	}

	// 會員單筆查詢(帳號)
	@Override
	public MemberBean queryMember(String email) {
		Session session = factory.getCurrentSession();
		MemberBean mb = session.get(MemberBean.class, email);
		if (mb == null) {
			throw new MemberNotFoundException("會員帳號：" + email + "找不到" + email);
		}
		return mb;
	}

	// 會員單筆查詢(memberId)
	@Override
	public MemberBean getMemberById(Integer memberId) {
		Session session = factory.getCurrentSession();
		MemberBean mb = session.get(MemberBean.class, memberId);
		if (mb == null) {
			throw new MemberNotFoundException("會員ID：" + memberId + "找不到" + memberId);
		}
		return mb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MemberBean> getAllMembers() {
		String hql = "From MemberBean";
		Session session = null;
		List<MemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void updatePwd(String email, String password) {

	}

	@Override
	public void update(MemberBean mb) {
		if (mb != null && mb.getEmail() != null) {
			Session session = factory.getCurrentSession();
			session.saveOrUpdate(mb);
		}
	}

	@Override
	public Blob getphotoById(Integer id) {
		Session session = factory.getCurrentSession();
		Blob b=(Blob) session.createQuery("SELECT mb.facepic FROM MemberBean mb WHERE mb.memberId = ?1")
			.setParameter(1, id).uniqueResult();
		return b;
	}

}
