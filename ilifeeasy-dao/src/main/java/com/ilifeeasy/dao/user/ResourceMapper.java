package com.ilifeeasy.dao.user;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.Page;
import com.ilifeeasy.entity.user.Resource;


public interface ResourceMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Resource record);

    int updateByPrimaryKey(Resource record);
    
    List<Resource> getResourceAll(Resource resource);
    
    // 以上是为了节约开发时间，使用MyBatisGenerator生成的代码
    // 以下是针对不足功能，添加的代码
    
    /**
     * 查询信息
     * @param resource
     * @return
     */
    Page<Resource> findResourceList(Resource resource);
    
	/**
	 * 获取所有resource
	 * @return
	 */
	List<Resource> getResourceList(@Param("parentId")Integer parentId,@Param("level")Integer level);
	
	/**
	 * 根据所属模块获取资源
	 * @return
	 */
	List<Resource> getResourceListByModuleName(@Param("moduleNames")List<String> moduleNames,@Param("userId")Integer userId);
	
	/**
	 * 根据资源id判断是否被角色使用
	 * @param resourceId
	 * @return
	 */
	Boolean isUsedByRole(@Param("resourceId") Integer resourceId);
	
	/**
	 * 给定角色具有权限的资源列表
	 * @param roleId
	 * @return
	 */
	List<Resource> getResourceListByRoleId(Integer roleId);
	
	/**
	 * 根据parentId获取资源
	 * @param parentId
	 * @return
	 */
	List<Resource> getResourceListByParentId(@Param("parentId")Integer parentId);	
}