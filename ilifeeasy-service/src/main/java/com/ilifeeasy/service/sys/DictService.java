package com.ilifeeasy.service.sys;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ilifeeasy.dao.sys.DictDao;
import com.ilifeeasy.dao.utils.CacheUtils;
import com.ilifeeasy.entity.sys.Dict;
import com.ilifeeasy.service.common.CrudService;
import com.ilifeeasy.service.utils.DictUtils;

/**
 * 字典Service
 * @author Andy
 * @version 2016-03-19
 */
@Service
@Transactional(readOnly = true)
public class DictService extends CrudService<DictDao, Dict> {
	
	/**
	 * 查询字段类型列表
	 * @return
	 */
	public List<String> findTypeList(){
		return dao.findTypeList(new Dict());
	}

	@Transactional(readOnly = false)
	public void save(Dict dict) {
		super.save(dict);
		CacheUtils.remove(DictUtils.CACHE_DICT_MAP);
	}

	@Transactional(readOnly = false)
	public void delete(Dict dict) {
		super.delete(dict);
		CacheUtils.remove(DictUtils.CACHE_DICT_MAP);
	}

}
