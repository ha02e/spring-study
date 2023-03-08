package com.hy.student.model;

import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;

public class StudentDAOImple implements StudentDAO {

	private SqlSessionTemplate sqlMap;
	
	public StudentDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	

	@Override
	public int studentAdd(StudentDTO dto) {
		
		int total=dto.getKor()+dto.getMat()+dto.getEng();
		int avg=total/3;
		
		Map map=new HashMap();
		map.put("name",dto.getName());
		map.put("kor", dto.getKor());
		map.put("mat", dto.getMat());
		map.put("eng", dto.getEng());
		map.put("total",total);
		map.put("avg", avg);
		
		int count=sqlMap.insert("studentAdd",map);
		return count;
	}
	
	@Override
	public List<StudentDTO> studentList() {
		List<StudentDTO> lists=sqlMap.selectList("studentList");
		return lists;
	}

}
