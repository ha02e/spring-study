package com.hy.student.model;

public class StudentDTO {

	private int idx;
	private String name;
	private int kor;
	private int mat;
	private int eng;
	private int total;
	private int avg;
	
	public StudentDTO() {
		super();
	}

	public StudentDTO(int idx, String name, int kor, int mat, int eng, int total, int avg) {
		super();
		this.idx = idx;
		this.name = name;
		this.kor = kor;
		this.mat = mat;
		this.eng = eng;
		this.total = total;
		this.avg = avg;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getMat() {
		return mat;
	}

	public void setMat(int mat) {
		this.mat = mat;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getAvg() {
		return avg;
	}

	public void setAvg(int avg) {
		this.avg = avg;
	}
	
}
