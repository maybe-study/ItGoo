package com.itcia.itgoo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itcia.itgoo.dao.ITestDao;
import com.itcia.itgoo.dto.Adopt;
@Service
public class AdminTest {
	@Autowired
	ITestDao tDao;

	public void documentPass(Adopt adopt) {
		tDao.documentPass(adopt);
	}

	public void adoptOut(Adopt adopt) {
		tDao.adoptOut(adopt);
	}
	
}
