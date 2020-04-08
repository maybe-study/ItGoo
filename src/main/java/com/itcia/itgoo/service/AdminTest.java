package com.itcia.itgoo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itcia.itgoo.dao.ITestDao;
import com.itcia.itgoo.dto.Adopt;
@Service
public class AdminTest {
	@Autowired
	ITestDao tDao;

	public void documentPass(Adopt adopt) {
		tDao.documentPass(adopt);
	}
	@Transactional
	public void adoptOut(Adopt adopt) {
		tDao.dogUpdate(adopt);
		tDao.adoptOut(adopt);
		tDao.testOut(adopt);
	}
	
}
