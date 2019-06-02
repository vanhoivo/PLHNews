package com.example.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.BaiViet;
import com.example.demo.service.BaiVietService;

@Controller
public class BaiVietController {
	@Autowired
	private BaiVietService baivietService;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("dsbaiviet", baivietService.findAll());
		return "index";
	}
	
	@GetMapping("/Index")
	public String index2(Model model) {
		model.addAttribute("dsbaiviet", baivietService.findAll());
		return "index";
	}
	
	@GetMapping("/DanhMuc")
	public String getDanhMuc(Model model) {
		model.addAttribute("dsbaiviet", baivietService.findAll());
		return "category";
	}
	
	@GetMapping("/TongHop")
	public String getTongHop(Model model) {
		model.addAttribute("dsbaiviet", baivietService.findAll());
		return "category";
	}

	@GetMapping("/baiviet")
	public String getBaiViet(Model model) {
		model.addAttribute("dsbaiviet", baivietService.findAll());
		return "list";
	}

	
	@GetMapping("/baiviet/create")
	public String create(Model model) {
		model.addAttribute("baiviet", new BaiViet());
		return "form";
	}

	@GetMapping("/baiviet/{id}/edit")
	public String edit(@PathVariable int id, Model model) {
		model.addAttribute("baiviet", baivietService.findOne(id));
		return "form";
	}
	
	@GetMapping("/baiviet/{id}/view")
	public String view(@PathVariable int id, Model model) {
		model.addAttribute("baiviet", baivietService.findOne(id));
		return "detail";
	}

	@PostMapping("/baiviet/save")
	public String save(@Valid BaiViet baiviet, BindingResult result, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			return "form";
		}
		baivietService.save(baiviet);
		redirect.addFlashAttribute("success", "Saved baiviet successfully!");
		return "redirect:/baiviet";
	}

	@GetMapping("/baiviet/{id}/delete")
	public String delete(@PathVariable int id, RedirectAttributes redirect) {
		baivietService.delete(id);
		redirect.addFlashAttribute("success", "Deleted baiviet successfully!");
		return "redirect:/baiviet";
	}

	@GetMapping("/baiviet/search")
	public String search(@RequestParam("s") String s, Model model) {
		if (s.equals("")) {
			return "redirect:/baiviet";
		}

		model.addAttribute("dsbaiviet", baivietService.search(s));
		return "list";
	}
	
	@GetMapping("/search")
	public String search2(@RequestParam("q") String q, Model model) {
		if (q.equals("")) {
			return "redirect:/";
		}

		model.addAttribute("searchresult", baivietService.search(q));
		return "search";
	}
}