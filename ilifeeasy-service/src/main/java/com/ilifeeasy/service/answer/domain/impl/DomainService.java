package com.ilifeeasy.service.answer.domain.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilifeeasy.dao.answer.DomainDao;
import com.ilifeeasy.entity.answer.Domain;
import com.ilifeeasy.service.answer.domain.IDomainService;

@Service
public class DomainService implements IDomainService {

	@Autowired
	private DomainDao domainMapper;

	public List<Domain> selectAll() {
		return this.domainMapper.selectAll();
	}

	public int addDomain(Domain domain) {
		return this.domainMapper.addDomain(domain);
	}

	public Domain findById(String domainId) {
		return this.domainMapper.findById(domainId);
	}

	public int updateDomain(Domain domain) {
		return this.domainMapper.updateDomain(domain);
	}

	public int deleteDomain(String domainId) {
		return this.domainMapper.deleteDomain(domainId);
	}

}
