package com.ilifeeasy.web.iim;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ilifeeasy.entity.common.Global;
import com.ilifeeasy.entity.common.Page;
import com.ilifeeasy.entity.common.StringTools;
import com.ilifeeasy.entity.iim.Mail;
import com.ilifeeasy.service.iim.MailService;
import com.ilifeeasy.web.common.BaseController;


/**
 * 发件箱Controller
 * @author Andy
 * @version 2016-04-09
 */
@Controller
@RequestMapping(value = "/a/iim/mail")
public class MailController extends BaseController {

	@Autowired
	private MailService mailService;
	
	@ModelAttribute
	public Mail get(@RequestParam(required=false) String id) {
		Mail entity = null;
		if (StringTools.isNotBlank(id)){
			entity = mailService.get(id);
		}
		if (entity == null){
			entity = new Mail();
		}
		return entity;
	}
	
	@RequiresPermissions("iim:mail:view")
	@RequestMapping(value = {"list", ""})
	public String list(Mail mail, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Mail> page = mailService.findPage(new Page<Mail>(request, response), mail); 
		model.addAttribute("page", page);
		return "iim/mailList";
	}

	@RequiresPermissions("iim:mail:view")
	@RequestMapping(value = "form")
	public String form(Mail mail, Model model) {
		model.addAttribute("mail", mail);
		return "iim/mailForm";
	}

	@RequestMapping(value = "save")
	public String save(Mail mail, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mail)){
			return form(mail, model);
		}
		mailService.save(mail);
		addMessage(redirectAttributes, "删除站内信成功");
		return "redirect:"+Global.getAdminPath()+"/iim/mail/?repage";
	}
	
	@RequestMapping(value = "delete")
	public String delete(Mail mail, RedirectAttributes redirectAttributes) {
		mailService.delete(mail);
		addMessage(redirectAttributes, "删除站内信成功");
		return "redirect:"+Global.getAdminPath()+"/iim/mail/?repage";
	}
	/**
	 * 批量删除
	 */
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			mailService.delete(mailService.get(id));
		}
		addMessage(redirectAttributes, "删除站内信成功");
		return "redirect:"+Global.getAdminPath()+"/iim/mail/?repage";
	}

}