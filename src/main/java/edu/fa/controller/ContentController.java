package edu.fa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.fa.entity.Content;
import edu.fa.service.ContentService;

@Controller
public class ContentController {
	
	@Autowired
	private ContentService contentService;
	@GetMapping(value = "/Viewscontent")
	public String listContent(Model model)
	{
		List<Content> theContents = contentService.getAllContents();
		model.addAttribute("contents",theContents);
		return "View-Contents";
	}
}
