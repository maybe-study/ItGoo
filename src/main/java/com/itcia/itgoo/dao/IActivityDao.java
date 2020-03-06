package com.itcia.itgoo.dao;

import java.util.List;

import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;

public interface IActivityDao {

	public boolean regiActivity(Activity ac);

	public boolean regiActivityPic(Activity ac);

	public List<Company> activityMyInfo(); 
}
