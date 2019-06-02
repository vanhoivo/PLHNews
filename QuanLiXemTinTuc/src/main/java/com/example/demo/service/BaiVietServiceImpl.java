package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.BaiViet;
import com.example.demo.repository.BaiVietRepository;

@Service
public class BaiVietServiceImpl implements BaiVietService {
	@Autowired
    private BaiVietRepository employeeRepository;

    @Override
    public Iterable<BaiViet> findAll() {
        return employeeRepository.findAll();
    }

    @Override
    public List<BaiViet> search(String q) {
        return employeeRepository.findByNameContaining(q);
    }

    @Override
    public BaiViet findOne(int id) {
        return employeeRepository.findOne(id);
    }

    @Override
    public void save(BaiViet contact) {
    	employeeRepository.save(contact);
    }

    @Override
    public void delete(int id) {
    	employeeRepository.delete(id);
    }
}	
