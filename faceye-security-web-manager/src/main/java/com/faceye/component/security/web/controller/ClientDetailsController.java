package com.faceye.component.security.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.faceye.component.security.web.entity.ClientDetails;
import com.faceye.component.security.web.entity.Resource;
import com.faceye.component.security.web.entity.Role;
import com.faceye.component.security.web.service.ClientDetailsService;
import com.faceye.component.security.web.service.RoleService;
import com.faceye.feature.controller.BaseController;
import com.faceye.feature.util.http.HttpUtil;

@Controller("web-clientDetailsController")
@Scope("prototype")
@RequestMapping("/security/web/clientDetails")
public class ClientDetailsController extends BaseController<ClientDetails, String, ClientDetailsService> {

	
	@Autowired
	public ClientDetailsController(ClientDetailsService service) {
		super(service);
	}

	/**
	 * 首页
	 * 
	 * @todo
	 * @return
	 * @author:@haipenge haipenge@gmail.com 2014年5月24日
	 */
	@RequestMapping("/home")
	public String home(HttpServletRequest request, Model model) {
		Map searchParams=HttpUtil.getRequestParams(request);
		Page<ClientDetails> page = this.service.getPage(searchParams, this.getPage(searchParams), this.getSize(searchParams));
		model.addAttribute("page", page);
		return "security.web.clientDetails.manager";
	}

	/**
	 * 转向编辑或新增页面
	 * 
	 * @todo
	 * @return
	 * @author:@haipenge haipenge@gmail.com 2014年5月24日
	 */
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable("id") String id,Model model) {
		if(id!=null){
			ClientDetails entity=this.service.get(id);
			model.addAttribute("clientDetails", entity);
		}
		return "security.web.clientDetails.update";
	}
	
	/**
	 * 转向新增页面
	 * @todo
	 * @param model
	 * @return
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2014年5月27日
	 */
	@RequestMapping(value="/input")
	public String input(ClientDetails clientDetails,Model model){
		return "security.web.clientDetails.update";
	}
	

	/**
	 * 数据保存
	 */
	@RequestMapping("/save")
	public String save(ClientDetails entity, RedirectAttributes redirectAttributes) {
		ClientDetails clientDetails=null;
		if(entity!=null && entity.getId()!=null){
			 clientDetails=this.service.get(entity.getId());
//			 clientDetails.setName(entity.getName());
		}else{
			clientDetails=entity;
		}
		this.service.save(clientDetails);
		return "redirect:/security/web/clientDetails/home";
	}

	/**
	 * 数据删除
	 * 
	 * @todo
	 * @return
	 * @author:@haipenge haipenge@gmail.com 2014年5月24日
	 */
	@RequestMapping("/remove/{id}")
	public String remove(@PathVariable("id") String id, RedirectAttributes redirectAttributes) {
		if(id!=null){
			this.service.remove(id);
		}
		return "redirect:/security/web/clientDetails/home";
	}
	/**
	 * 取得数据明细
	 * @todo
	 * @param id
	 * @param model
	 * @return
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2014年5月26日
	 */
	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable String id,Model model){
		if(id!=null){
			ClientDetails entity=this.service.get(id);
			model.addAttribute("clientDetails", entity);
		}
		return "security.web.clientDetails.detail";
	}

	
	
	

}
