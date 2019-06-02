package com.example.demo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.BaiViet;

public interface BaiVietRepository extends CrudRepository<BaiViet, Integer> {

    List<BaiViet> findByNameContaining(String q);

}
