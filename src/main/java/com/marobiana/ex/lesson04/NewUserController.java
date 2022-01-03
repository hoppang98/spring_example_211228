package com.marobiana.ex.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marobiana.ex.lesson04.bo.NewUserBO;
import com.marobiana.ex.lesson04.model.NewUser;

@RequestMapping("/lesson04")
@Controller
public class NewUserController {
	
	@Autowired
	private NewUserBO newUserBO;
	
	@RequestMapping("/ex01/1") // 이걸 통해서 addUser.jsp로 접근
	public String addUserView() {
		return "lesson04/addUser"; // jsp파일 경로명
	}

	// jsp에서 넘어온 데이터을 받는 부분
	@ResponseBody //넘어온 데이터 확인하는 용도
	@RequestMapping("/ex01/add_user")
	public String addUser(							// addUser.jsp에서 넘어오는 데이터들
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("introduce") String introduce,
			@RequestParam("email") String email
			) {
		
		int count = newUserBO.addUser(name, yyyymmdd, email, introduce);
		
		return "입력 성공 : " + count;
	}
	
	
	//특정 id기반으로 한 행만 가져오기
	//@ResponseBody
	@RequestMapping("/ex01/2")
	public String getUser(Model model) { // 여기 model부분에 jsp에서 사용할 테이터들을 세팅
		NewUser user = newUserBO.getUser(2);
		model.addAttribute("result", user); // model에 key-value방식으로 세팅중 -> userInfo.jsp에서 ${key.value} 방식으로 뽑아온다
		model.addAttribute("subject", "회원정보");
		
		return "lesson04/userInfo";
	}
}
















