package com.marobiana.ex.lesson06;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marobiana.ex.lesson04.bo.NewUserBO;

@Controller
public class NewUser06Controller {

	@Autowired
	private NewUserBO newUserBO;						// lesson04의 bo 활용
	
	@GetMapping("/lesson06/ex01/add_user_view")
	public String ex01() {
		return "/lesson06/addUser";
	}
	
	@ResponseBody //데이터만 건드는 경우는 @ResponseBody
	@PostMapping("/lesson06/ex01/add_user") 
	public String ex02(
			@RequestParam("name") String name, 					
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("introduce") String introduce,
			@RequestParam("email") String email
			) { 
		
		int count = newUserBO.addUser(name, yyyymmdd, email, introduce);				// lesson04의 bo 활용
		
		if(count == 1) {
			return "success"; // jsp의 ajax를 위한 데이터
		} else {
			return "fail";
		}
	}
	
	@ResponseBody //데이터만 건드는 경우는 @ResponseBody
	@GetMapping("/lesson06/ex02/duplicate_name")
	public Map<String, String> duplicateName (				//map형태로 만들어서 String형태로 return이 아니고 map형태로 return
			@RequestParam("name") String name
			) {
		
		Map<String, String> result = new HashMap<>();
		
		if(newUserBO.isDuplicateName(name)) {
			result.put("isDuplicate", "true");
		} else {
			result.put("isDuplicate", "false");
		}
		
		return result;
	}
	
}

