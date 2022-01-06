package com.marobiana.ex.lesson05;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Lesson05Controller {
	
	// JSTL로 jsp에서 c로 변수 정의하고 쓰기
	@GetMapping("/lesson05/ex01")
	public String ex01() {
		return "/lesson05/ex01";
	}
	
	@GetMapping("/lesson05/ex02")
	public String ex02(Model model) {
		
		// 과일 이름 리스트 생성
		List<String> fruits = new ArrayList<>();
		fruits.add("apple");
		fruits.add("banana");
		fruits.add("melon");
		fruits.add("peach");
		fruits.add("grape");
		
		model.addAttribute("fruits", fruits); // 모델에 값을 저장해서 jsp에서 사용할 수 있도록 한다 key value 쌍으로
		
		
		
		// 회원 정보
		List<Map<String, Object>> users = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("name", "손지승");
		map.put("age", 21);
		map.put("hobby", "농구");
		users.add(map);  // 맵 다 만들고 users에 넣었다.
		
		map = new HashMap<>(); // 위에서 이미 map 변수 넣었기 때문에 다시 map변수 사용해도 괜찮다.
		map.put("name", "김뿡빵");
		map.put("age", 24);
		map.put("hobby", "댄스");
		users.add(map);
		
		model.addAttribute("users", users); // 모델에 값을 저장해서 jsp에서 사용할 수 있도록 한다
		
		
		return "/lesson05/ex02";
	}
	
	
	@GetMapping("/lesson05/ex03")
	public String ex03(Model model) {
		
		Date today = new Date(); // Model model로 모델화
		
		model.addAttribute("today", today); // jsp에서 사용할 수 있도록
		
		return "/lesson05/ex03";
	}
	
	
	@GetMapping("/lesson05/ex04")
	public String ex03() {
		return "/lesson05/ex04";
	}
}
