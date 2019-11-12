package com.web.login.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.login.dao.MemberDao;
import com.web.login.model.MemberBean;
import com.web.login.service.MemberService;

@Transactional
@Service
public class MemberServiceImpl implements MemberService {
	MemberDao dao;
	
	@Autowired
	public void setDao(MemberDao dao) {
		this.dao = dao;
	}

	@Override
	public void saveMember(MemberBean mb) {
		dao.saveMember(mb);
	}

	@Override
	public MemberBean queryMember(String email) {
		return dao.queryMember(email);
	}

	@Override
	public List<MemberBean> getAllMembers() {
		return dao.getAllMembers();
	}

	@Override
	public MemberBean checkIDPassword(String account, String password) {
		try {
			return dao.checkIDPassword(account, password);
		}catch(Exception e){
			return null;
		}
		
	}

	@Override
	public boolean idExists(String email) {
		return dao.idExists(email);
	}

	@Override
	public MemberBean getMemberById(Integer memberId) {
		return dao.getMemberById(memberId);
	}

	@Override
	public void update(MemberBean mb) {
		dao.update(mb);
	}

	@Override
	public void updatePwd(String email, String password) {
		dao.updatePwd(email, password);	
	}



}
