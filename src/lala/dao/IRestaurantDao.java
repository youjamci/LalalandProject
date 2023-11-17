package lala.dao;

import java.util.List;

import lala.vo.RestaurantVO;


public interface IRestaurantDao {

	//레스토랑 정보 가져오기
	public List<RestaurantVO> getRestaurant();
	
}
