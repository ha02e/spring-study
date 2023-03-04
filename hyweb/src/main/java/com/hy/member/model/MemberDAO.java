package com.hy.member.model;

public interface MemberDAO {
	
	//로그인 검증 관련 상수화 선언
	int Error=-1;
	int Login_ok=1;
	int Not_id=2;
	int Not_pwd=3;
	

	public int memberJoin(MemberDTO dto);
	public boolean idCheck(String userid);
	public int loginCheck(String userid,String userpwd);
	public String getUserInfo(String userid);
	
}
