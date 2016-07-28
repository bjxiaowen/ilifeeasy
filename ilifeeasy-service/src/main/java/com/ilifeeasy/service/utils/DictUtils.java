package com.ilifeeasy.service.utils;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.ilifeeasy.dao.sys.DictDao;
import com.ilifeeasy.dao.utils.CacheUtils;
import com.ilifeeasy.dao.utils.SpringContextHolder;
import com.ilifeeasy.entity.sys.Dict;

/**
 * 字典工具类
 * 
 * @author Andy
 * @version 2016-3-17
 */
public class DictUtils {

	private static DictDao dictDao = SpringContextHolder.getBean(DictDao.class);

	public static final String CACHE_DICT_MAP = "dictMap";

	public static String getDictLabel(String value, String type, String defaultValue) {
		if (StringUtils.isNotBlank(type) && StringUtils.isNotBlank(value)) {
			for (Dict dict : getDictList(type)) {
				if (type.equals(dict.getType()) && value.equals(dict.getValue())) {
					return dict.getLabel();
				}
			}
		}
		return defaultValue;
	}

	public static String getDictLabels(String values, String type, String defaultValue) {
		if (StringUtils.isNotBlank(type) && StringUtils.isNotBlank(values)) {
			List<String> valueList = Lists.newArrayList();
			for (String value : StringUtils.split(values, ",")) {
				valueList.add(getDictLabel(value, type, defaultValue));
			}
			return StringUtils.join(valueList, ",");
		}
		return defaultValue;
	}

	public static String getDictValue(String label, String type, String defaultLabel) {
		if (StringUtils.isNotBlank(type) && StringUtils.isNotBlank(label)) {
			for (Dict dict : getDictList(type)) {
				if (type.equals(dict.getType()) && label.equals(dict.getLabel())) {
					return dict.getValue();
				}
			}
		}
		return defaultLabel;
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public static List<Dict> getDictList(String type) {
		List<Dict> dictLists =null;
		try {
			Map<String, List<Dict>> dictMap = (Map<String, List<Dict>>) CacheUtils.get(CACHE_DICT_MAP);
			if (dictMap == null) {
				dictMap = Maps.newHashMap();
				List<Dict> list= dictDao.findAllList(new Dict());
				for (Dict dict : list) {
					List<Dict> dictList = dictMap.get(dict.getType());
					if (dictList != null) {
						dictList.add(dict);
					} else {
						dictMap.put(dict.getType(), Lists.newArrayList(dict));
					}
				}
				CacheUtils.put(CACHE_DICT_MAP, dictMap);
			}
			dictLists= dictMap.get(type);
			if (dictLists == null) {
				dictLists = Lists.newArrayList();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dictLists;
	}

}
