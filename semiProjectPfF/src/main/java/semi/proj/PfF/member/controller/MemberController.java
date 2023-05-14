package semi.proj.PfF.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import semi.proj.PfF.member.model.service.MemberService;
import semi.proj.PfF.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	// �α��� ȭ�� �̵�
	@GetMapping("loginView.me")
	public String loginView() {
		return "login";
	}

	// ȸ���α���
	@PostMapping("login.me")
	public String login(@ModelAttribute Member login, Model model) {
		// ���񽺿� ������ Member ä����
		Member m = mService.login(login);
		
		if(m != null) {
			model.addAttribute("loginUser", m);
			return "redirect:/";
		} else return "loginFail";
	}
	
	// �α׾ƿ�
	@GetMapping("logout.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}

	// ȸ������ ������Ƿ� �̵�
	@GetMapping("enrollViewAgree.me")
	public String enrollViewAgree() {
		return "enrollViewAgree";
	}

	// ������ǿ��� ȸ���������� �̵�
	@RequestMapping("enrollView.me")
	public String enrollView(@RequestParam(name = "eventAgree", required = false, defaultValue = "N") String eventAgree, HttpServletRequest request) {
		request.setAttribute("eventAgree", eventAgree);
		return "enrollView";
	}

	// ȸ������
	@PostMapping("enroll.me")
	public String enroll(@ModelAttribute Member enrollUser, @RequestParam("homePhone1") String home1, @RequestParam("homePhone2") String home2, @RequestParam("homePhone3") String home3,
			 			@RequestParam("phone1") String phone1, @RequestParam("phone2") String phone2, @RequestParam("phone3") String phone3,
			 			@RequestParam("postCode") String addr1, @RequestParam("address") String addr2, @RequestParam("detailAddress") String addr3, @RequestParam("refAddress") String addr4,
			 			Model model) {
		if(home2 != null && home3 != null && !home2.trim().equals("") && !home3.trim().equals("")) {
			enrollUser.setMemberHomePhone(home1 + "-" + home2.trim() + "-" + home3.trim());
		} else enrollUser.setMemberHomePhone(null);
		
		enrollUser.setMemberPhone(phone1 + "-" + phone2.trim() + "-" + phone3.trim());
		enrollUser.setMemberAddress(addr1 + "/" + addr2 + "/" + addr3 + "/" + addr4);
		
		int result = mService.enroll(enrollUser);
		
		if(result > 0) {
			login(enrollUser, model);
			return "redirect:/";
		} else {
			return "loginFail";	// ���������������
		}
	}

}
