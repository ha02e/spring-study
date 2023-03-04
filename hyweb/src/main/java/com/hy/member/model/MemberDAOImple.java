package com.hy.member.model;

import java.sql.*;
import java.util.*;

public class MemberDAOImple implements MemberDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAOImple() {
		super();
	}

	@Override
	public int memberJoin(MemberDTO dto) {
		
		try {
			conn=com.hy.db.ConnDB.getConn();
			String sql="insert into jsp_member values(jsp_member_idx.nextval,?,?,?,?,?,?,sysdate)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getEmail());
			ps.setString(5, dto.getTel());
			ps.setString(6, dto.getAddr());
		
			int count=ps.executeUpdate();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}

	}
	
	@Override
	public boolean idCheck(String userid) {
		try {
			conn=com.hy.db.ConnDB.getConn();
			String sql="select * from jsp_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			
			return rs.next();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	
	@Override
	public int loginCheck(String userid, String userpwd) {
		try {
			conn=com.hy.db.ConnDB.getConn();
			String sql="select pwd from jsp_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			
			if(rs.next()) { //조회됐을 경우
				String db_pwd=rs.getString("pwd"); //DB에 있는 pwd
				if(db_pwd.equals(userpwd)) { //DB pwd와 사용자가 입력한 pwd가 같을 때
					return Login_ok;
				}else {
					return Not_pwd;
				}
			}else {
				return Not_id;
			}
		
		} catch (Exception e) {
			e.printStackTrace();
			return Error;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	@Override
	public String getUserInfo(String userid) {
		try {
			conn=com.hy.db.ConnDB.getConn();
			String sql="select * from jsp_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			
			rs.next();
			String username=rs.getString("name");
			return username;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
}
