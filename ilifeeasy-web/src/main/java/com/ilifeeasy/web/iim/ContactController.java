package com.ilifeeasy.web.iim;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ilifeeasy.dao.sys.UserDao;
import com.ilifeeasy.dao.utils.UserUtils;
import com.ilifeeasy.entity.common.Global;
import com.ilifeeasy.entity.common.IdGen;
import com.ilifeeasy.entity.iim.Friend;
import com.ilifeeasy.entity.iim.Group;
import com.ilifeeasy.entity.iim.LayJson;
import com.ilifeeasy.entity.sys.Office;
import com.ilifeeasy.entity.sys.User;
import com.ilifeeasy.service.sys.OfficeService;
import com.ilifeeasy.service.sys.SystemService;
import com.ilifeeasy.web.common.BaseController;


/**
 * 心电图实时显示查看Controller
 * @author Andy
 * @version 2016-04-09
 */
@Controller
@RequestMapping(value = "/a/iim/contact")
public class ContactController extends BaseController {

	@Autowired
	private SystemService systemService;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private OfficeService officeService;
	
	
	/**
	 * 打开通讯录
	 * @param user
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = {"index", ""})
	public String index(User user, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<User> list = systemService.findUser(user);
        model.addAttribute("list", list);
		return "iim/contacts";
	}

	
	/**
	 * 查找医生
	 * @param user
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "searchUsers")
	public String searchUsers(User user, HttpServletRequest request, HttpServletResponse response, Model model) {
			List<User> friends = userDao.searchUsers(user);
	        model.addAttribute("list", friends);
		
		return "iim/search_user";
	}
	
	
	/**
	 * 添加好友--->常用联系人
	 */
	@RequestMapping(value = "addFriend")
	public String addFriend(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		User currentUser =  UserUtils.getUser();
		for(String id : idArray){
			 if(userDao.findFriend(currentUser.getId(), id) == null){
			  
				 userDao.insertFriend(IdGen.uuid(), currentUser.getId(), id);//添加对方为好友
				// userDao.insertFriend(IdGen.uuid(), id, currentUser.getId());//同时把自己添加为对方的好友
			 }
		}
		addMessage(redirectAttributes, "添加好友成功");
		return "redirect:"+Global.getAdminPath()+"/iim/contact/myFriends/?repage";
	}

	
	/**
	 * 删除好友
	 */
	@RequestMapping(value = "delFriend")
	public String delFriend(String id, RedirectAttributes redirectAttributes) {
		  User friend =   UserUtils.get(id);
		  User currentUser =  UserUtils.getUser();
		  if(friend != null &&  userDao.findFriend(currentUser.getId(), friend.getId()) != null){
			  userDao.deleteFriend(currentUser.getId(), friend.getId());//删除好友
			//  userDao.deleteFriend(friend.getId(), currentUser.getId());//同时把自己从对方的好友列表删除
		  }
		
		return "redirect:"+Global.getAdminPath()+"/iim/contact/myFriends/?repage";
	}

	/**
	 * 打开我的好友列表--->常用联系人列表
	 * @param user
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "myFriends")
	public String myFriends(User user, HttpServletRequest request, HttpServletResponse response, Model model) {
		User currentUser =  UserUtils.getUser();
		List<User>  friends = userDao.findFriends(currentUser);
        model.addAttribute("list", friends);
		return "iim/myFriends";
	}

	
	
	
	
	/**
	 * 打开聊天窗口
	 * @param user
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "layerIM")
	public String layerIM(User user, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<User> list = systemService.findUser(user);
        model.addAttribute("list", list);
		return "iim/layerIM";
	}
	
	@RequestMapping(value="friend")
	@ResponseBody
	public LayJson getFriend(User user, HttpServletRequest request, HttpServletResponse response, Model model){
		LayJson j = new LayJson();
		j.setStatus(1);
		//我的好友--->常用联系人
		User currentUser =  UserUtils.getUser();
		List<User>  friends = userDao.findFriends(currentUser);
		Group friendGroup = new Group();
		friendGroup.setName("我的好友");
		friendGroup.setId(1);
		friendGroup.setNums(friends.size());
		for(User u : friends){
			Friend friend = new Friend();
			friend.setId(u.getLoginName());
			friend.setName(u.getName());
			friend.setFace(u.getPhoto());
			friendGroup.getItem().add(friend);
		}
		j.getData().add(friendGroup);
		
		
		List<Office> officeList = officeService.findList(true);
		int index=1;
		for(Office office : officeList){
			user.setOffice(office);
			List<User> users = userDao.findListByOffice(currentUser);
			Group group = new Group();
			group.setName(office.getName());
			group.setNums(users.size());
			group.setId(++index);
			for(User u : users){
				Friend friend = new Friend();
				friend.setId(u.getLoginName());
				friend.setName(u.getName());
				friend.setFace(u.getPhoto());
				group.getItem().add(friend);
			}
			j.getData().add(group);
		}
		user.setOffice(null);
		List<User> users=null;
		try {
			users = userDao.findListByOffice(currentUser);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Group group = new Group();
		group.setName("未分组");
		if(users==null||users.size()==0){
			group.setNums(0);
		}
		
		group.setId(++index);
		for(User u : users){
			Friend friend = new Friend();
			friend.setId(u.getLoginName());
			friend.setName(u.getName());
			friend.setFace(u.getPhoto());
			group.getItem().add(friend);
		}
		j.getData().add(group);
		return j;
	}
	
	/**
	 * 群组列表接口 预留待开发
	 * @return
	 */
	@RequestMapping(value="group")
	@ResponseBody
	public LayJson getGroup(){
		LayJson j = new LayJson();
		j.setStatus(1);
		return j;
	}
	/**
	 * 最近联系人接口 预留
	 * @return
	 */
	@RequestMapping(value="chatLog")
	@ResponseBody
	public LayJson getChatLog(){
		LayJson j = new LayJson();
		j.setStatus(1);
		return j;
	}
	/**
	 * 群组成员接口 预留
	 *  @return
	 */
	@RequestMapping(value="groups")
	@ResponseBody
	public LayJson getGroups(){
		LayJson j = new LayJson();
		j.setStatus(1);
		return j;
	}
	
}