package com.lithan.assigntmentfour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.assigntmentfour.entity.Store;
import com.lithan.assigntmentfour.service.StoreService;

@Controller
public class StoreController {
	@Autowired
	StoreService storeService;
	
	@GetMapping("/store")
	public ModelAndView addStore() {
		ModelAndView mav = new ModelAndView("add-store");
		return mav;
	}
	
	@GetMapping("/view-store")
	public ModelAndView viewStore() {
		ModelAndView mav = new ModelAndView("store");
		List<Store> stores = storeService.listAll();
		mav.addObject("s", stores);
		
		return mav;
	}
	
	@PostMapping("/addStore")
	public ModelAndView addStoreProcess(@ModelAttribute("storeForm")Store store) {
		ModelAndView mav = new ModelAndView("redirect:/view-store");
		storeService.save(store);
		return mav;
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView editStore(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("edit-store");
		Store store = storeService.findById(id);
		mav.addObject("editStore", store);
		return mav;
	}
	
	@PostMapping("/editProcess/{id}")
	public ModelAndView editProcess(@ModelAttribute("editStoreForm") Store store) {
		ModelAndView mav = new ModelAndView("redirect:/view-store");
		storeService.save(store);
		return mav;
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView deleteStore(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/view-store");
		Store store = storeService.findById(id);
		storeService.remove(store);
		return mav;
	}
}
