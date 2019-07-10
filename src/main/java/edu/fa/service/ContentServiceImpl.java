package edu.fa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.fa.dao.ContentDAO;
import edu.fa.entity.Content;

@Service
public class ContentServiceImpl implements ContentService{

	@Autowired
	private ContentDAO contentDAO;
	
	@Transactional
	public List<Content> getAllContents() {
		return contentDAO.getAllContents();
	}

}
