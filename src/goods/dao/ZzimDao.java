package goods.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import goods.vo.GoodsVO;
import goods.vo.ZzimVO;

public class ZzimDao extends MyBatisDao {
	
	private static ZzimDao instance;
	private ZzimDao() {}
	public static ZzimDao getInstance() {
		if(instance == null) instance = new ZzimDao();
		return instance;
	}
	
	public List<GoodsVO> getBestGoods() {
		return selectList("goods.getBestGoods");
	}
	
	public List<GoodsVO> getMyZzim(String memId) {
		return selectList("goods.getMyZzim", memId);
	}
	
	public int insertZzim(ZzimVO zzimVO) {
		return insert("goods.insertZzim", zzimVO);
	}
	
	public int deleteZzim(ZzimVO zzimVO) {
		return delete("goods.deleteZzim", zzimVO);
	}	
	
}
