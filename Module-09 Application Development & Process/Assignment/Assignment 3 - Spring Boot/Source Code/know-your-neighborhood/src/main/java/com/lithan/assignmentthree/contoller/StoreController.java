package com.lithan.assignmentthree.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.assignmentthree.entity.Store;
import com.lithan.assignmentthree.service.StoreService;

@Controller
public class StoreController {
	@Autowired
	StoreService StoreRepository;
	
	@GetMapping("/store")
	public ModelAndView addStore() {
		ModelAndView mav = new ModelAndView("add-store");
		return mav;
	}
	
	@GetMapping("/view-store")
	public ModelAndView viewStore() {
		ModelAndView mav = new ModelAndView("store");
		List<Store> stores = StoreRepository.listAll();
		mav.addObject("s", stores);
		
		return mav;
	}
	
	@PostMapping("/addStore")
	public ModelAndView addStoreProcess(@ModelAttribute("storeForm")Store store) {
		ModelAndView mav = new ModelAndView("redirect:/view-store");
		StoreRepository.save(store);
		return mav;
	}
}
