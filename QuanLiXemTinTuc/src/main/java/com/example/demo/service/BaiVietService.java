package com.example.demo.service;

import java.util.List;

import com.example.demo.model.BaiViet;

public interface BaiVietService {
	Iterable<BaiViet> findAll();

    List<BaiViet> search(String q);

    BaiViet findOne(int id);

    void save(BaiViet contact);

    void delete(int id);
}
