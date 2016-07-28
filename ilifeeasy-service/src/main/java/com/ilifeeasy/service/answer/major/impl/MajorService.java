package com.ilifeeasy.service.answer.major.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilifeeasy.dao.answer.MajorDao;
import com.ilifeeasy.entity.answer.Major;
import com.ilifeeasy.service.answer.major.IMajorService;

@Service
public class MajorService implements IMajorService {

	@Autowired
	private MajorDao majorMapper;

	public List<Major> findByDomainId(String domainId) {
		return this.majorMapper.findByDomainId(domainId);
	}

	public Major findById(String majorId) {
		return this.majorMapper.findById(majorId);
	}

	public int addMajor(Major major) {
		return this.majorMapper.addMajor(major);
	}

	public int updateMajor(Major major) {
		return this.majorMapper.updateMajor(major);
	}

	public int deleteMajor(String majorId) {
		return this.majorMapper.deleteMajor(majorId);
	}

}
