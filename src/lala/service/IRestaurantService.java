package lala.service;


import java.util.List;

import lala.vo.RestaurantVO;

public interface IRestaurantService {

	//레스토랑 정보(이름, 설명, 오픈시간, 마감시간, 사진)
	public List<RestaurantVO> getRestaurant();

		
	}


