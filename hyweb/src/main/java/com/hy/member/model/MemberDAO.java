package com.hy.member.model;

public interface MemberDAO {

	public int memberJoin(MemberDTO dto);
	public boolean idCheck(String userid);
	
}
