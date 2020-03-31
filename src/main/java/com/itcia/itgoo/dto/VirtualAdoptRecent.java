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
@Alias("virtualadoptrecent")
@Data
@Accessors(chain=true)
public class VirtualAdoptRecent {
	int recentid;
	String title;
	String id;
	int dogid;
	String message;
}
