package semi.proj.PfF.common.model.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class MailSendService {
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@Autowired(required = false)
	private int authNumber; 
	
		public void makeRandomNumber() {
			Random r = new Random();
			int checkNum = r.nextInt(888888) + 111111;
			authNumber = checkNum;
		}
		
		// 이메일 양식
		public String joinEmail(String email) {
			makeRandomNumber();
			String setFrom = ".com"; // email-config
			String toMail = email;
			String title = "회원 가입 인증 이메일 입니다.";
			String content = 
					"<a href=\"http://localhost:8080/PfF/\">"
					+ "<img alt=\"로고\" src=\"https://mail.naver.com/read/image/original/?mimeSN=1684820155.27"
					+ "9193.62561.50944&offset=1719&size=4142&u=m_chyo_&cid=85ef8b651cc64c1dd08cdd674aed8d13@cweb0"
					+ "03.nm.nfra.io&contentType=image/png&filename=1684820145721.png&org=1\"><br><br>"
					+ "PfF를 방문해주셔서 감사합니다." +
	                "<br><br>" + 
				    "인증 번호는 " + authNumber + " 입니다." + 
				    "<br>" + 
				    "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
			mailSend(setFrom, toMail, title, content);
			return Integer.toString(authNumber);
		}
		
		// 이메일 헬퍼
		public void mailSend(String setFrom, String toMail, String title, String content) { 
			MimeMessage message = mailSender.createMimeMessage();
			// true 일때 여러개 작성가능
			try {
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
				helper.setFrom(setFrom);
				helper.setTo(toMail);
				helper.setSubject(title);
				// true ���� > html �������� ���� , �ۼ����� ������ �ܼ� �ؽ�Ʈ�� ����.
				helper.setText(content,true);
				mailSender.send(message);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		
	
}