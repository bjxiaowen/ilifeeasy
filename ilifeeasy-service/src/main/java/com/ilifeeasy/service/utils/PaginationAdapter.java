package com.ilifeeasy.service.utils;

import com.github.pagehelper.Page;
import com.ilifeeasy.entity.common.Pagination;

public class PaginationAdapter {

	public static <T> Pagination<T> convert(Page<T> page) {
		if (page == null)
			return null;
		Pagination<T> pagination = new Pagination(page.getPageNum(), ((Long) page.getTotal()).intValue(),
				page.getPageSize());
		pagination.setList(page);
		return pagination;
	}
}
