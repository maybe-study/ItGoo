package com.itcia.itgoo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itcia.itgoo.dto.Afile;
import com.itcia.itgoo.dto.Bfile;
import com.itcia.itgoo.dto.Dfile;
import com.itcia.itgoo.dto.Rfile;


public interface IFileDao {
	@Select("select * from bf where bf_bnum=#{bNum}")
	List<Afile> getAfList(Integer bNum);
	@Select("select * from bf where bf_bnum=#{bNum}")
	List<Bfile> getBfList(Integer bNum);
	@Select("select * from bf where bf_bnum=#{bNum}")
	List<Dfile> getDfList(Integer bNum);
	@Select("select * from bf where bf_bnum=#{bNum}")
	List<Rfile> getRfList(Integer bNum);
	@Delete("delete from bf where bf_bnum=#{bNum}")
	boolean fileDelete(Integer bNum);
	@Insert("insert into bf values(bf_seq.nextval,#{bnum},#{oriFileName},#{sysFileName})")
	boolean fileInsert(Map<String, String> fMap);
}
