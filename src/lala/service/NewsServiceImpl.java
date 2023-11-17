package lala.service;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import lala.dao.INewsDao;
import lala.dao.newsDaoImpl;
import lala.vo.NewsVO;

  
public class NewsServiceImpl implements INewsService {

	private static INewsService newsService;
	
	private INewsDao newsDao;
	
	private NewsServiceImpl() {
		
		newsDao = newsDaoImpl.getInstance();
		
	}
	
	public static INewsService getInstance() {
		if(newsService ==  null) {
			newsService = new NewsServiceImpl();
		}
		return newsService;
	}
	
	
	@Override
	public int insertNewsSV(NewsVO nv) {
 		return newsDao.insertNews(nv);
 		
	}

	@Override
	public int updateNewsSV(NewsVO nv) {
 		return newsDao.updateNews(nv);
	}

	
	@Override
	public int deleteNewsSV(String notiCd) {
 		return newsDao.deleteNews(notiCd);
 		
	}

	@Override
	public List<NewsVO> getAllNewsSV() {

		return newsDao.getAllNews();
	}

	@Override
	public List<NewsVO> searchNewsSV(String Keyword) {
		return newsDao.searchNews(Keyword);
	
	
	}

	@Override
	public NewsVO getNewsSV(String notiCd) {
		return  newsDao.getNews(notiCd);
	}

	
	@Override
	public NewsVO uploadFile(HttpServletRequest req) {
		String uploadPath = "D:/4.HighJava/Workspace/LalalandProject/WebContent/images/notice";
		File uploadDir = new File(uploadPath);
		
		if(!uploadDir.exists()) { // 업로드 폴더 존재하지 않으면..
			uploadDir.mkdirs();
		}
		
		NewsVO nv = new NewsVO();
		
		try {
			for (Part part : req.getParts()) {
				String fileName = part.getSubmittedFileName();
				if(fileName != null && !fileName.equals("")) {
					String saveFileName = UUID.randomUUID().toString().replace("-", "");
					String fileExtension = fileName.lastIndexOf(".") < 0 ? "" :
						fileName.substring(fileName.lastIndexOf(".") + 1);
					String saveFilePath = uploadDir + "/" + saveFileName + "." + fileExtension;

					// part.write(saveFilePath);
					
					InputStream input = part.getInputStream();
					OutputStream output = new FileOutputStream(saveFilePath);
					
					BufferedInputStream bis = new BufferedInputStream(input);
					BufferedOutputStream bos = new BufferedOutputStream(output);
					
					int bytesRead = 0;
					while ((bytesRead = bis.read()) != -1) {
					    bos.write(bytesRead);
					}
					bos.flush();
					
					bis.close();
					bos.close();
					
					if(part.getName().equals("notiImg")) {
						nv.setNotiImg(saveFilePath);
					} 
					
					part.delete();
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return nv;
	}
	
}
