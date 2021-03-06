package com.ilifeeasy.service.tools;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ilifeeasy.dao.tools.TestInterfaceDao;
import com.ilifeeasy.entity.common.Page;
import com.ilifeeasy.entity.tools.TestInterface;
import com.ilifeeasy.service.common.CrudService;

/**
 * 接口Service
 * @author andy
 * @version 2016-01-07
 */
@Service
@Transactional(readOnly = true)
public class TestInterfaceService extends CrudService<TestInterfaceDao, TestInterface> {

	public TestInterface get(String id) {
		return super.get(id);
	}
	
	public List<TestInterface> findList(TestInterface testInterface) {
		return super.findList(testInterface);
	}
	
	public Page<TestInterface> findPage(Page<TestInterface> page, TestInterface testInterface) {
		return super.findPage(page, testInterface);
	}
	
	@Transactional(readOnly = false)
	public void save(TestInterface testInterface) {
		super.save(testInterface);
	}
	
	@Transactional(readOnly = false)
	public void delete(TestInterface testInterface) {
		super.delete(testInterface);
	}
	
}