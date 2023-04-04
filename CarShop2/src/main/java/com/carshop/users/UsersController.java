package com.carshop.users;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carshop.mail.MailService;

@RequestMapping("users")
@Controller
public class UsersController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MailService mailService;
	
	@GetMapping("/join")
	public String joinForm(@ModelAttribute("NewUser") User user) {
		return "users/joinform";
	}
	
	@PostMapping("/join")
	public String submitForm(@ModelAttribute("NewUser") User user) {
		
		//스프링은 반드시 password를 암호화 하여 저장해야만 로그인을 할수 있는게 기본이다. 
		
		String encodedPassword = bcryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		
		
		userService.setNewUser(user);
		
		String to = user.getUemail();
		String subject = user.getUname() + " 님 회원 가입을 환영합니다.";
		String body = "저희 사이트에 회원으로 가입하셔서 감사드립니다. ";
		
		mailService.sendMail(to, subject, body);
		
		return "redirect:/login";
	}

	
	@GetMapping("/list")
	public String UserList(Model model) {
	    List<User> list = userService.getAllUserList();
	    model.addAttribute("userList", list);

	    return "users/list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public void updateAuth(@RequestParam Map<String, Object> auth) {
		//System.out.println(auth);

	    this.userService.updateAuth(auth);
		
		
	}
	
	
	@ResponseBody
	@RequestMapping("/remove")
	public void removeUser(@RequestParam("username") String username) {
	    userService.removeUser(username);

	}
	
	
	@RequestMapping("/kakao")
	public String loginCheckKakao(HttpServletRequest req, @RequestParam Map<String, Object> auth) {
		
		String email = (String)auth.get("email");
		
		User user = this.userService.existUsername(email);
		
		if (user != null) {
			System.out.println("디비에 회원정보 있음 즉 이미 회원임");
			//디비에 있는 사용자이므로 로그인 세션처리
			//독자적인 처리가 아니라 스프링 시큐리티 규격에 맞게 세션처리
			List<GrantedAuthority> list = new ArrayList<GrantedAuthority>();
			list.add(new SimpleGrantedAuthority("ROLE_USER"));
			
			SecurityContext sc = SecurityContextHolder.getContext();
			
			sc.setAuthentication(new UsernamePasswordAuthenticationToken(user, null, list));
			// user 회원정보 객체, null 패스워드 , list 권한 설정
			
			HttpSession session = req.getSession(true);
			
			session.setAttribute(
					HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, sc);
			
			return "/login";
		} else {
			System.out.println("디비에 회원정보 없음 즉 회원이 아님");
			return "";
		}
		
		

	}
	
	
	@GetMapping("/joinkakao")
	public String joinkakaoForm(@ModelAttribute("NewUser") User user) {
		return "users/joinkakao";
	}
	
	@PostMapping("/joinkakao")
	public String submitkakaoForm(@ModelAttribute("NewUser") User user) {
		
		//스프링은 반드시 password를 암호화 하여 저장해야만 로그인을 할수 있는게 기본이다. 
		
		String encodedPassword = bcryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		userService.setNewUser(user);
		return "redirect:/login";
	}
	
	
	
}
