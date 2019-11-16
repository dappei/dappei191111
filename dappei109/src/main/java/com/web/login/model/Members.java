package com.web.login.model;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "members")
@XmlAccessorType(XmlAccessType.FIELD)
public class Members {
	
	@XmlElement(name = "member")
	private List<MemberBean> memberList = null;
	
	public Members() {
	}
	public Members(List<MemberBean> memberList) {
		this.memberList = memberList;
	}

	public List<MemberBean> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<MemberBean> memberList) {
		this.memberList = memberList;
	}

	@Override
	public String toString() {
		return "Members [members=" + memberList + "]";
	}

}
