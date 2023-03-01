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

}
