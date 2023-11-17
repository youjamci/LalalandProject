package goods.service;

import java.util.List;

import goods.dao.ZzimDao;
import goods.vo.GoodsVO;
import goods.vo.ZzimVO;

public class ZzimService {

	private ZzimDao zzimDao;
	
	private static ZzimService instance;
	private ZzimService() {
		zzimDao = ZzimDao.getInstance();
	}
	public static ZzimService getInstance() {
		if(instance == null) instance = new ZzimService();
		return instance;
	}
	
	public List<GoodsVO> showBestGoods() {
		return zzimDao.getBestGoods();
	}
	
	public List<GoodsVO> showMyZzim(String memId) {
		return zzimDao.getMyZzim(memId);
	}
	
	public int addZzim(ZzimVO zzimVO) {
		return zzimDao.insertZzim(zzimVO);
	}
	
	public int removeZzim(ZzimVO zzimVO) {
		return zzimDao.deleteZzim(zzimVO);
	}
	
}
