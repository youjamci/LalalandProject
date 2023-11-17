package goods.service;

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

import goods.dao.GoodsDao;
import goods.vo.GdBkVO;
import goods.vo.GdBuyVO;
import goods.vo.GoodsVO;

public class GoodsService {
	
	private GoodsDao goodsDao;
	
	private static GoodsService instance;
	private GoodsService() {
		goodsDao = GoodsDao.getInstance();
	}
	public static GoodsService getInstance() {
		if(instance == null) instance = new GoodsService();
		return instance;
	}
	
	public List<GoodsVO> showAllGoods() {
		return goodsDao.getAllGoods();
	}
	
	public List<GoodsVO> showSalesGoods() {
		return goodsDao.getSalesGoods();
	}
	
	public List<GoodsVO> showAllGoodsSort(String gdSortCode) {
		return goodsDao.getAllGoodsSort(gdSortCode);
	}
	
	public List<GoodsVO> showSalesGoodsSort(String gdSortCode) {
		return goodsDao.getSalesGoodsSort(gdSortCode);
	}
	
	public GoodsVO showDetailGoods(String gdCd) {
		return goodsDao.getGoods(gdCd);
	}
	
	public int addGoods(GoodsVO gdVO) {
		return goodsDao.insertGoods(gdVO);
	}
	
	public int modifyGoods(GoodsVO gdVO) {
		return goodsDao.updateGoods(gdVO);
	}
	
	public int salesChkGoods(GoodsVO gdVO) {
		return goodsDao.changeGoods(gdVO);
	}
	
	public GoodsVO uploadFile(HttpServletRequest req) {
		String uploadPath = "D:/4.HighJava/Workspace/LalalandProject/WebContent/images/goods";
		File uploadDir = new File(uploadPath);
		
		if(!uploadDir.exists()) { // 업로드 폴더 존재하지 않으면..
			uploadDir.mkdirs();
		}
		
		GoodsVO gdVO = new GoodsVO();
		
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
					
					if(part.getName().equals("gdImg")) {
						gdVO.setGdImg(saveFilePath);
					} else if(part.getName().equals("gdDimg")) {
						gdVO.setGdDimg(saveFilePath);
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
		
		return gdVO;
	}
	
	//1) b003회원이 GD_BUY의 GBD_CHK가 구매중인 행이 있으면
	public String existGdbCd(GdBuyVO gdBuyVO) {
		return goodsDao.existGdbCd(gdBuyVO);
	}	
	public int existGdbCdInsert(GdBkVO gdBkVO) {
		return goodsDao.existGdbCdInsert(gdBkVO);
	}
	
	//2) b003회원이 GD_BUY의 GBD_CHK가 구매중인 행이 없으면
	public int nonExistGdbCd(GdBuyVO gdBuyVO) {
		return goodsDao.nonExistGdbCd(gdBuyVO);
	}
	public int nonExistGdbCdInsert(GdBkVO gdBkVO) {
		return goodsDao.nonExistGdbCdInsert(gdBkVO);
	}
	
	public List<GoodsVO> memberShoppingList(GdBuyVO gdBuyVO){
		return goodsDao.memberShoppingList(gdBuyVO);
	}
	
	public int updateGoodsNum(GdBkVO gdBkVO) {
		return goodsDao.updateGoodsNum(gdBkVO);
	}

	
}
