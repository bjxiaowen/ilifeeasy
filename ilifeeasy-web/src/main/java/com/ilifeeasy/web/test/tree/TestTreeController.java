package com.ilifeeasy.web.test.tree;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.ilifeeasy.entity.common.Global;
import com.ilifeeasy.entity.common.StringTools;
import com.ilifeeasy.entity.test.tree.TestTree;
import com.ilifeeasy.service.test.tree.TestTreeService;
import com.ilifeeasy.web.common.BaseController;

/**
 * 组织机构Controller
 * @author liugf
 * @version 2016-01-15
 */
@Controller
@RequestMapping(value = "/a/test/tree/testTree")
public class TestTreeController extends BaseController {

	@Autowired
	private TestTreeService testTreeService;
	
	@ModelAttribute
	public TestTree get(@RequestParam(required=false) String id) {
		TestTree entity = null;
		if (StringTools.isNotBlank(id)){
			entity = testTreeService.get(id);
		}
		if (entity == null){
			entity = new TestTree();
		}
		return entity;
	}
	
	/**
	 * 机构列表页面
	 */
	@RequiresPermissions("test:tree:testTree:list")
	@RequestMapping(value = {"list", ""})
	public String list(TestTree testTree, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<TestTree> list = testTreeService.findList(testTree); 
		model.addAttribute("list", list);
		return "test/tree/testTreeList";
	}

	/**
	 * 查看，增加，编辑机构表单页面
	 */
	@RequiresPermissions(value={"test:tree:testTree:view","test:tree:testTree:add","test:tree:testTree:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(TestTree testTree, Model model) {
		if (testTree.getParent()!=null && StringTools.isNotBlank(testTree.getParent().getId())){
			testTree.setParent(testTreeService.get(testTree.getParent().getId()));
			// 获取排序号，最末节点排序号+30
			if (StringTools.isBlank(testTree.getId())){
				TestTree testTreeChild = new TestTree();
				testTreeChild.setParent(new TestTree(testTree.getParent().getId()));
				List<TestTree> list = testTreeService.findList(testTree); 
				if (list.size() > 0){
					testTree.setSort(list.get(list.size()-1).getSort());
					if (testTree.getSort() != null){
						testTree.setSort(testTree.getSort() + 30);
					}
				}
			}
		}
		if (testTree.getSort() == null){
			testTree.setSort(30);
		}
		model.addAttribute("testTree", testTree);
		return "test/tree/testTreeForm";
	}

	/**
	 * 保存机构
	 */
	@RequiresPermissions(value={"test:tree:testTree:add","test:tree:testTree:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(TestTree testTree, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, testTree)){
			return form(testTree, model);
		}
		testTreeService.save(testTree);
		addMessage(redirectAttributes, "保存机构成功");
		return "redirect:"+Global.getAdminPath()+"/test/tree/testTree/?repage";
	}
	
	/**
	 * 删除机构
	 */
	@RequiresPermissions("test:tree:testTree:del")
	@RequestMapping(value = "delete")
	public String delete(TestTree testTree, RedirectAttributes redirectAttributes) {
		testTreeService.delete(testTree);
		addMessage(redirectAttributes, "删除机构成功");
		return "redirect:"+Global.getAdminPath()+"/test/tree/testTree/?repage";
	}

	@RequiresPermissions("user")
	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<TestTree> list = testTreeService.findList(new TestTree());
		for (int i=0; i<list.size(); i++){
			TestTree e = list.get(i);
			if (StringTools.isBlank(extId) || (extId!=null && !extId.equals(e.getId()) && e.getParentIds().indexOf(","+extId+",")==-1)){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParentId());
				map.put("name", e.getName());
				mapList.add(map);
			}
		}
		return mapList;
	}
	
}