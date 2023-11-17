package lala.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;
import lala.vo.RestaurantVO;

public class restaurantDaoImpl implements IRestaurantDao {

	private static IRestaurantDao resDao;	//인터페이스 정적변수
	
	private restaurantDaoImpl() {}	//생성자 메서드

	public static IRestaurantDao getInstance() {	//restaurantDaoImpl()객체
		if(resDao == null) {
			resDao = new restaurantDaoImpl();
		}
		return resDao;
	}
	
	
	//레스토랑의 정보를 가져옴
	@Override
	public List<RestaurantVO> getRestaurant() {
		
		List<RestaurantVO> reslist = new ArrayList<RestaurantVO>();

		SqlSession session = MyBatisUtil.getInstance();

		try {

			reslist = session.selectList("restaurant.getRestaurant");

		} catch (PersistenceException ex) {
			ex.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return reslist;
		
	}
	 
	}

