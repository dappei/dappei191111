package com.web.login.service;

import java.sql.Blob;
import java.util.List;

import com.web.login.model.MemberBean;

public interface MemberService {

	MemberBean checkIDPassword(String email, String password);

	boolean idExists(String email);

	MemberBean queryMember(String email);
	
	MemberBean getMemberById(Integer memberId);
	
	void saveMember(MemberBean mb);

	List<MemberBean> getAllMembers();
	
	void updatePwd(String email, String password);
	
	void update(MemberBean mb);
	
	Blob getphotoById(Integer id);
}
