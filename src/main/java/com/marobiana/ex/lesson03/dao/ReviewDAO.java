package com.marobiana.ex.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marobiana.ex.lesson03.model.Review;

@Repository
public interface ReviewDAO {
	
	public Review selectReview(@Param("id") int id); // 여기 있는 값들을 xml로 전달

	public int insertReview(							// 여기 있는 값들을 xml로 전달
			@Param("storeId") int storeId,
			@Param("menu") String menu,
			@Param("userName") String userName,
			@Param("point") double point,
			@Param("review") String review
			);
	
	//객체로 받아서 처리
	public int insertReviewAsObject(Review review);
}
