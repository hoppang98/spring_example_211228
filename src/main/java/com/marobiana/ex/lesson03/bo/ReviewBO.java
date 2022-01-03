package com.marobiana.ex.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marobiana.ex.lesson03.dao.ReviewDAO;
import com.marobiana.ex.lesson03.model.Review;

@Service
public class ReviewBO {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	
	public Review getReview(int id) {
		return reviewDAO.selectReview(id);
	}
	
	public int addReview(int storeId, String menu, String userName, double point, String review) {//실행 성공한 행의 갯수가 나온다 int
		return reviewDAO.insertReview(storeId, menu, userName, point, review);
	}
	
	//객체로 만들어서 데이터베이스 넣기
	public int insertReviewAsObject(Review review) {
		return reviewDAO.insertReviewAsObject(review);
	}

}