package com.itcia.itgoo.dao;

import java.security.Principal;
import java.util.List;

import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Role;

public interface IMemberDao {

	boolean memberJoin(Member mb);
	
	Member searchid(Member mb);

	Member searchidphone(Member mb);

	Member duplicateid(Member mb);

	void memberRoleJoin(Role rl);

	List<Member> showmyinfo(Adopt ad);

	public int updateusername(Member mb);

	List<Member> myPage(Member mb);

	void updateuseremail(Member mb);

	void updatephone(Member mb);

	void updatebirth(Member mb);

	void updateadderess(Member mb);

	
	

}
