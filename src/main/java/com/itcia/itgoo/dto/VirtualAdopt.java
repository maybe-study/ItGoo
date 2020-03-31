package com.itcia.itgoo.dto;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.type.Alias;
import org.springframework.web.socket.WebSocketSession;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("virtualadopt")
@Data
@Accessors(chain=true)
public class VirtualAdopt {
	private String id;
	private int dogid;
	private int donation;
	private String payday;
	private String dogname;
	private int dogage;
	private String dogspecial;
	private int sex;
	private String shelterid;
	private String donationstart;
	private String message;
	private String title;
	private String recentpic;
	private int totaldonation;
}
