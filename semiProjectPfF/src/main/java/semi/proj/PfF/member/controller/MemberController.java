package semi.proj.PfF.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import semi.proj.PfF.member.model.vo.Member;

@Controller
public class MemberController {

	// �α��� ȭ�� �̵�
	@GetMapping("loginView.me")
	public String loginView() {
		return "login";
	}

	// ȸ���α���
	@PostMapping("login.me")
	public String login(@ModelAttribute Member login) {
		// ���񽺿� ������ Member ä����
		System.out.println("���̵� : " + login.getMemberId());
		System.out.println("��� : " + login.getMemberPwd());

		return null;
	}

	// ȸ������ ������Ƿ� �̵�
	@GetMapping("enrollViewAgree.me")
	public String enrollViewAgree() {
		return "enrollViewAgree";
	}

	// ������ǿ��� ȸ���������� �̵�
	@RequestMapping("enrollView.me")
	public String enrollView(
			@RequestParam(name = "eventAgree", required = false, defaultValue = "uncheck") String eventAgree,
			Model model) {
		System.out.println(eventAgree);
		model.addAttribute(eventAgree);
		return "enrollView";
	}

	// ȸ������
	// �ּ�, ��ȭ��ȣ ���⼭ �����ؼ� �ٽ� �־��ֱ�, �̺�Ʈüũ�Ȱ����
	@PostMapping("enroll.me")
	public String enroll(@ModelAttribute Member enrollMember) {
		System.out.println(enrollMember); // Member(memberId=id�Դϴ�, memberPwd=qlalfqjsgh, memberName=�̸���,
											// memberAge=2023-06-02, memberGender=M, memberEmail=m_chyo_@naver.com,
											// memberHomePhone=null, memberPhone=null, memberAddress=null,
											// enrollDate=null, point=0, payAmount=0, eventCheck=null, grade=null,
											// admin=
		return "redirect:/";
	}

}
