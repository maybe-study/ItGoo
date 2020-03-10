package com.itcia.itgoo.dao;

import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Role;

public interface IMemberDao {

	boolean memberJoin(Member mb);
	
	Member searchid(Member mb);

	Member searchidphone(Member mb);

	Member duplicateid(Member mb);

	void memberRoleJoin(Role rl);

}
