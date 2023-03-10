package com.hy.student.model;

import java.util.*;

public interface StudentDAO {
	
	public int studentAdd(StudentDTO dto);
	public List<StudentDTO> studentList();
	public StudentDTO sutdentUpSearch(int idx);
	public int studentUpdate(StudentDTO dto);

}
