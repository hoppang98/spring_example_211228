package com.marobiana.ex.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.marobiana.ex.lesson03.bo.ReviewBO;
import com.marobiana.ex.lesson03.dao.ReviewDAO;
import com.marobiana.ex.lesson03.model.Review;

@RestController
public class ReviewController {
	
	@Autowired
	private ReviewBO reviewBO;
	
	// 요청 URL : http://localhost/lesson03/ex01?id=5
	@RequestMapping("/lesson03/ex01")
	public Review ex01(
//			@RequestParam(value="id") int id// 필수 파라미터
//			@RequestParam(value="id", required=true) int id// 필수 파라미터
//			@RequestParam(value="id", required=false) Integer id// 비 필수 파라미터
			@RequestParam(value="id", defaultValue="2") int id
	) {
		System.out.println("#### id " + id);
		return reviewBO.getReview(id);
	}
	
	@RequestMapping("/lesson03/ex02")
	public String ex02() {
		// 4, "콤비네이션피자", "김바다", 4.5, "할인도 받고 잘 먹었습니다"
		// int count = reviewBO.addReview(4, "콤비네이션피자", "김바다", 4.5, "할인도 받고 잘 먹었습니다"); //count = 성공한 갯수
		
		// 객체 형태로 만들어서 보내기
		Review review = new Review();
		review.setStoreId(4);
		review.setMenu("콤비네이션피자");
		review.setUserName("김바다");
		review.setPoint(4.5);
		review.setReview("2222222222");
		
		int count = reviewBO.insertReviewAsObject(review);
		
		return "입력 결과 = " + count;
	}

}