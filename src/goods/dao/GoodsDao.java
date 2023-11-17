package goods.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import goods.vo.GdBkVO;
import goods.vo.GdBuyVO;
import goods.vo.GdPayVO;
import goods.vo.GoodsVO;

public class GoodsDao extends MyBatisDao {
	
	private static GoodsDao instance;
	private GoodsDao() {}
	public static GoodsDao getInstance() {
		if(instance == null) instance = new GoodsDao();
		return instance;
	}
	
	public List<GoodsVO> getAllGoods() {
		return selectList("goods.getAllGoods");
	}
	
	public List<GoodsVO> getSalesGoods() {
		return selectList("goods.getSalesGoods");
	}
	
	public List<GoodsVO> getAllGoodsSort(String gdSortCode) {
		return selectList("getAllGoodsSort", gdSortCode);
	}
	
	public List<GoodsVO> getSalesGoodsSort(String gdSortCode) {
		return selectList("getSalesGoodsSort", gdSortCode);
	}
	
	public GoodsVO getGoods(String gdCd) {
		return selectOne("goods.getGoods", gdCd);
	}
	
	public int insertGoods(GoodsVO gdVO) {
		return insert("goods.insertGoods", gdVO);
	}
	
	public int updateGoods(GoodsVO gdVO) {
		return update("goods.updateGoods", gdVO);
	}
	
	public int changeGoods(GoodsVO gdVO) {
		return update("goods.changeGoods", gdVO);
	}
	
	//1) b003회원이 GD_BUY의 GBD_CHK가 구매중인 행이 있으면
	public String existGdbCd(GdBuyVO gdBuyVO) {
		return selectOne("goods.existGdbCd", gdBuyVO);
	}	
	
	public int existGdbCdInsert(GdBkVO gdBkVO) {
		return insert("goods.existGdbCdInsert",gdBkVO);
	}
	
	//2) b003회원이 GD_BUY의 GBD_CHK가 구매중인 행이 없으면
	public int nonExistGdbCd(GdBuyVO gdBuyVO) {
		return insert("goods.nonExistGdbCd",gdBuyVO);
	}
	
	public int nonExistGdbCdInsert(GdBkVO gdBkVO) {
		return insert("goods.nonExistGdbCdInsert",gdBkVO);
	}
	
	public List<GoodsVO> memberShoppingList(GdBuyVO gdBuyVO) {
		return selectList("goods.memberShoppingList", gdBuyVO);
	}
	
	public int updateGoodsNum(GdBkVO gdBkVO) {
		return update("goods.updateGoodsCount", gdBkVO);
	}
	
	
	public static void main(String[] args) {
		GoodsDao gd = new GoodsDao();
		
		GdBuyVO gdBuyVO = new GdBuyVO();
		gdBuyVO.setMemId("a001");
		
		System.out.println(gd.memberShoppingList(gdBuyVO));
	}
}