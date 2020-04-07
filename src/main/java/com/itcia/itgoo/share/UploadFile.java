package com.itcia.itgoo.share;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itcia.itgoo.dao.IFileDao;
@Service
public class UploadFile {
	private static final String ROOT_PATH = "C:/ItGoo/fileupload/";
	/*
	 * 단일 파일 업로드
	 * 파일을 아래의 경로에 업로드
	 * parameter 구분 - 시설등록증:companycard, 신분증:identification
	 * return - 실제 저장된 경로,이름 ==> DB에 실제로 저장될 값
	 */
	public String fileUp(MultipartFile file, String kind) {
		System.out.println("fileUp");
		//원래 파일 이름
		String oriFileName = file.getOriginalFilename(); // a.txt
		//객체의 이름이 공백이면 아무것도 저장 되지 않았으므로 return null
		if(oriFileName=="") {
			System.out.println("빈 파일 넘어옴");
			return null;
		}
		//경로지정, 폴더생성
		String path = ROOT_PATH + kind+"/";
		System.out.println("path="+path);
		File dir = new File(path);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdirs(); // upload폴더 생성
		}
		//저장될 파일 이름 생성 a.txt ==>112323242424.txt
		String sysFileName = System.currentTimeMillis() + "."
				+ oriFileName.substring(oriFileName.lastIndexOf(".") + 1);	//확장자 붙임
		//메모리->실제 파일 업로드
		try {
			file.transferTo(new File(path, sysFileName)); // 서버에 파일 저장
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "/fileupload/"+kind+"/"+sysFileName;
	}
	/*
	 * 여러 파일 업로드
	 * 파일 리스트를 아래의 경로에 여러개 업로드
	 * parameter 구분 - 강아지 사진:dog, 시설사진:company, 액티비티 사진:activity
	 * return - 실제 저장된 경로,이름이 담긴 List ==> DB에 실제로 저장될 값
	 */
	public List<String> fileUp(List<MultipartFile> fList ,String kind ) {
		System.out.println("fileUp");
		//첫번째 객체의 이름이 공백이면 아무것도 저장 되지 않았으므로 return null
		List<String> filePathList= new ArrayList<String>();
		if(fList.get(0).getOriginalFilename()=="") {
			System.out.println("빈 파일 넘어옴");
			return null;
		}
		//경로지정, 폴더생성
		String path = ROOT_PATH + kind+"/";
		File dir = new File(path);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdirs(); // upload폴더 생성
		}
		for (int i = 0; i < fList.size(); i++) {
			MultipartFile mf = fList.get(i); // 실제파일
			String oriFileName = mf.getOriginalFilename(); // a.txt
			//저장될 파일 이름 생성 a.txt ==>112323242424.txt
			String sysFileName = System.currentTimeMillis()+i+ "."
					+ oriFileName.substring(oriFileName.lastIndexOf(".") + 1);	//확장자 붙임	//요기이이이이 인덱스를 붙여서 절대 안겹치게
			//메모리->실제 파일 업로드
			try {
				
				mf.transferTo(new File(path, sysFileName)); // 서버에 파일 저장
				filePathList.add("/fileupload/"+kind+"/"+sysFileName);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("---------------------------------사진---------------------------------------");
		for(String v : filePathList) {
			System.out.println("사진 : " + v);
		}
		
		return filePathList;
	}

	// 파일 다운로드
	public void download(String fullPath, String picName, HttpServletResponse resp) throws Exception {

		// 한글파일 깨짐 방지
		String downFile = URLEncoder.encode(picName, "UTF-8");
		/* 파일명 뒤에 이상한 문자가 붙는 경우 아래코드를 해결 */
		// downFile = downFile.replaceAll("\\+", "");
		// 파일 객체 생성
		File file = new File(fullPath);
		// 다운로드 경로 파일을 읽어 들임
		InputStream is = new FileInputStream(file);
		// 반환객체설정
		resp.setContentType("application/octet-stream");
		resp.setHeader("content-Disposition", "attachment; filename=\"" + downFile + "\"");
		// 반환객체에 스트림 연결
		OutputStream os = resp.getOutputStream();

		// 파일쓰기
		byte[] buffer = new byte[1024];
		int length;
		while ((length = is.read(buffer)) != -1) {
			os.write(buffer, 0, length);
		}
		os.flush();
		os.close();
		is.close();
	}

//		public void delete(List<Bfile> bfList) {
//			  for(Bfile bf:bfList) {
//			         File file = new File(fullPath+bf.getBf_sysName());
//			         if (file.exists()) {
//			            System.out.println("파일 삭제");
//			            file.delete();
//			         } else {
//			            System.out.println("이미 삭제된 파일");
//			         }
//			  }
//		}

}
