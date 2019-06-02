package com.example.demo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "baiviet")
public class BaiViet implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "tacgia")
	private String tacgia;
	
	@Column(name = "tomtat")
	private String tomtat;
	
	@Column(name = "noidung")
	private String noidung;
	
	@Column(name = "hinh")
	private String hinh;
	
	@Column(name = "madm")
	private String madm;

	public BaiViet() {
		super();
	}

	public BaiViet(int id, String name, String tacgia, String tomtat, String noidung, String hinh, String madm) {
		super();
		this.id = id;
		this.name = name;
		this.tacgia = tacgia;
		this.tomtat = tomtat;
		this.noidung = noidung;
		this.hinh = hinh;
		this.madm = madm;
	}

	public String getTacgia() {
		return tacgia;
	}

	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}

	public String getTomtat() {
		return tomtat;
	}

	public void setTomtat(String tomtat) {
		this.tomtat = tomtat;
	}

	public String getMadm() {
		return madm;
	}

	public void setMadm(String madm) {
		this.madm = madm;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNoidung() {
		return noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	
	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
}