package goods.service;

import java.util.List;

import goods.dao.GdPayDao;
import goods.vo.GdBkVO;
import goods.vo.GdBuyVO;
import goods.vo.GdPayVO;
import goods.vo.GoodsVO;

public class GdPayService {
	
	private GdPayDao gdPayDao;
	
	private static GdPayService instance;
	private GdPayService() {
		gdPayDao = GdPayDao.getInstance();
	}
	public static GdPayService getInstance() {
		if(instance == null) instance = new GdPayService();
		return instance;
	}
	
	public List<GdPayVO> showAllGoodsPay() {
		return gdPayDao.getAllGoodsPay();
	}
	
	public List<GdPayVO> gdpCdGoods(String gdpCd) {
		return gdPayDao.gdpCdGoods(gdpCd);
	}
	
	public List<GoodsVO> showGoodsSales() {
		return gdPayDao.getGoodsSales();
	}
	
	public List<GdPayVO> showMyGoodsPay(String memId) {
		return gdPayDao.getMyGoodsPay(memId);
	}
	
	public int finGoodsPay(GdPayVO gdPayVO) {
		return gdPayDao.insertGoodsPay(gdPayVO);
	}
	
	public int refundGoodsPay(String gdpCd) {
		return gdPayDao.cancleGoodsPay(gdpCd);
	}
	
	public int updateGoodsNum(GdBkVO gdBkVO) {
		return gdPayDao.updateGoodsNum(gdBkVO);
	}
	
	public int goodsPayInfo(GdPayVO gdPayVO) {
		return gdPayDao.goodsPayInfo(gdPayVO);
	}
	
	public int deleteShoppingList(GdBuyVO gdBuyVO) {
		return gdPayDao.deleteShoppingList(gdBuyVO);
	}
	
}
