package goods.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import goods.vo.GdBkVO;
import goods.vo.GdBuyVO;
import goods.vo.GdPayVO;
import goods.vo.GoodsVO;

public class GdPayDao extends MyBatisDao {
	
	private static GdPayDao instance;
	private GdPayDao() {}
	public static GdPayDao getInstance() {
		if(instance == null) instance = new GdPayDao();
		return instance;
	}
	
	public List<GdPayVO> getAllGoodsPay() {
		return selectList("goodspay.getAllGoodsPay");
	}
	
	public List<GdPayVO> gdpCdGoods(String gdpCd) {
		return selectList("goodspay.gdpCdGoods", gdpCd);
	}
	
	public List<GoodsVO> getGoodsSales() {
		return selectList("goodspay.getGoodsSales");
	}
	
	public List<GdPayVO> getMyGoodsPay(String memId) {
		return selectList("goodspay.getMyGoodsPay", memId);
	}
	
	public int insertGoodsPay(GdPayVO gdPayVO) {
		int res = insert("goodspay.insertGoodsPay", gdPayVO);
		int res2 = update("goodspay.updateGdbChk", gdPayVO);
		if(res>0 && res2>0) {
			return 1;
		} else {
			return 0;
		}
	}
	
	public int cancleGoodsPay(String gdpCd) {
		return update("goodspay.cancleGoodsPay", gdpCd);
	}
		
	public int updateGoodsNum(GdBkVO gdBkVO) {
		return update("goodspay.updateGdbkNum", gdBkVO);
	}
	
	public int goodsPayInfo(GdPayVO gdPayVO) {
		
		int res = insert("goodspay.insertGoodsBucketPayInfo", gdPayVO);
		int res2 = update("goodspay.updateGdbChk", gdPayVO);
		
		if(res > 0 && res2 > 0) {
			return 1;
		}else {
			return 0;
		}
	}
	
	public int deleteShoppingList(GdBuyVO gdBuyVO) {
		return delete("goodspay.deleteShoppingList", gdBuyVO);
	}
	
}
