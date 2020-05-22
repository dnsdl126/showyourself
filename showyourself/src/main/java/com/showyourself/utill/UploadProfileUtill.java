package com.showyourself.utill;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class UploadProfileUtill {
	    								// 파일 저장 경로 , 파일 원래 이름 ,크기 
	public static String uploadProfile(String uploadPath, String originalName, byte[] fileData) throws Exception{
		
		UUID uid = UUID.randomUUID(); // 랜덤한 값을 생성 
		String savedName = uid.toString() + "_" + originalName; // 중복을 막기위해 파일 원래 이름에 랜던한 값을 붙이기 
		
		//업로드할 디렉토리 생성
		String savedPath = calcPath(uploadPath);
		
		
		File target = new File(uploadPath + savedPath, savedName);	
		// uploadPath + savedPath = uploadpth 는 c:/showyourself/uplod 까지만 경로를 타는데 위에 clacpath로 
		//                           그날짜에 생성한 폴더에 파일을 넣어뒀기 때문에 savedPath랑 합쳐야 경로가 나온다 
		// target : 이름과 경로가 담기 
		
		FileCopyUtils.copy(fileData, target);
		
		String uploadedFileName ="";
		
		uploadedFileName = makeFilename(uploadPath, savedPath, savedName);
		
		return uploadedFileName; 
		
	}
	
	
	
	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		 //Calendar의 인스턴스를 가지고 와라  == 객체생성 해라 
		 // 오늘 날짜를 만들어서 cal에 담아라 
		 
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		//separator 구분자 (\) + 오늘치 달력 값에서 year을 가지고 와라
		// \ +2020
		
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
		
		// new DecimalFormat("00") -> 예를들어 4월의 경우 04로 나오도록 변환 
		// \2020 + \ + 05  
		
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		// \2020 + \ + 05 + \09
		
		
		makeDir(uploadPath, yearPath, monthPath, datePath);
		// 하위 디렉토리 생성 
		// 디렉토리를 만들어서 uploadPath, yearPath, monthPath, datePath 담는다 
		// 같은 클래스 내에 있어서 객체 생성할 필요가 없다
		
		log.info(datePath);
		return datePath;//\2020\05\20
	}
	
	//디렉토리 생성 
	private static void makeDir(String uploadPath, String... paths) {
		//다른 디렉토리가 존재하면 skip
		//String... : 동일한 type의 매게변수를 여러개 받을때 사용 한다. 동적으로 매게변수 갯수가 바뀌어야 할때 사용 
		// paths : 배열로만들어서 넣어준다 
		if(new File(paths[paths.length - 1]).exists()) {
			//paths[paths.length - 1] = path [3 - 1] -> 년 월 일  \2020\05\20
			// '\2020\05\20' 디렉토리 경로가 있으면 여기서 메서드 종료 
			// exists 그날짜에 생성된 파일이 있는지 확인 있으면 true  그파일에 없으면 false 아래 for문으로 이동  
			return;
		 }
		// [\2020 , \2020\05, \2020\05\20]
		   for (String path : paths) {
			   // for each문 
			   // paths에서 하나씩 꺼내서 String path 담는다
			   //1번째 반복 \2020 
			   //2번째 반복 \2020\05
			   //3번째 반복 \2020\05\20
			File dirPath = new File(uploadPath + path);
				// C://developer/upload + \2020
			if (!dirPath.exists()) { // exists() => 있으면 TRUE ==> !TRUE => FALSE
				dirPath.mkdir(); 
				// 디렉토리 생성
				// c:/showyourself/uplod\2020 
				// c:/showyourself/uplod\2020\05
				// c:/showyourself/uplod|2020\05\20
				
			}
		}
	}
	
	// 파일 경로와 이름을 붙인  fullname
	private static String makeFilename(String uploadPath, String path, String fileName )throws Exception {
		//이미지를 읽기 위한 버퍼
		//sourceImg 원본이미지 
		//                                              ((C://developer/upload+\2020\05\20, asdf3215w4e6rwe_dobby.jsp)
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName)); // 원본 이미지 
		//ImageIO.read
		//path 경로로 가서 
		//이미지를 읽어와라 
		
			 
		String fileFullName= uploadPath + path +File.separator + fileName;
		//사진 이름
	
	    
	    
	    // 썸네일의 이름을 리턴함
		return fileFullName.substring(uploadPath.length()).replace(File.separatorChar, '/');
		// replac(File.separatorChar, '/')e : \를 전부 /로 변경
		//  /2020/05/20/s_asdf3215w4e6rwe_dobby.jsp 를 return 하겠다 
	}

}
