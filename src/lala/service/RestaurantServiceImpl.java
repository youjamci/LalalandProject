package lala.service;

import java.util.List;

import lala.dao.IRestaurantDao;
import lala.dao.restaurantDaoImpl;
import lala.vo.RestaurantVO;
 
public class RestaurantServiceImpl implements IRestaurantService {
	
	
	private static IRestaurantService resService;	//정적변수
	
	public static IRestaurantService getInstance() {	// RestaurantServiceImpl 객체생성
		if(resService == null) {
			resService = new RestaurantServiceImpl();
		}
		return resService;
	}
	
	private IRestaurantDao resDao;
	
	public RestaurantServiceImpl() {
		resDao = restaurantDaoImpl.getInstance();	//다오임플 객체 생성
	}

	
	
	@Override
	public List<RestaurantVO> getRestaurant() {

		return resDao.getRestaurant();
	}

	
	
	}
	

