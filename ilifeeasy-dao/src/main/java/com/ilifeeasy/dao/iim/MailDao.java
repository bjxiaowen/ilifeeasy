package com.ilifeeasy.dao.iim;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.iim.Mail;

/**
 * 发件箱DAO接口
 * @author Andy
 * @version 2016-03-19
 */
@MyBatisDao
public interface MailDao extends CrudDao<Mail> {
	public int getCount(MailDao entity);
}