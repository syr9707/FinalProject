package com.jobdongsan.project.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired
	private JavaMailSenderImpl mailSender;
	private int authNumber;

	public void makeRandomNumber() {
		// 난수의 범위 111111 ~ 999999 (6자리 난수)
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		authNumber = checkNum;
	}

	// 이메일 인증 이메일 양식
	public String joinEmail(String email) {
		makeRandomNumber();
		String setFrom = "jobdongsan_@naver.com";
		String toMail = email;
		String title = "잡동산 회원 가입 인증 이메일 입니다."; // 이메일 제목
		String content = "홈페이지를 방문해주셔서 감사합니다." + // html 형식으로 작성 !
				"<br><br>" + "인증 번호는 " + authNumber + "입니다." + "<br>" + "해당 인증번호를 인증번호 확인란에 기입하여 주세요."; // 이메일 내용 삽입
		mailSend(setFrom, toMail, title, content);
		return Integer.toString(authNumber);
	}
	
	// 아이디 찾기 이메일 양식
	public String findId(String email) {
		makeRandomNumber();
		String setFrom = "jobdongsan_@naver.com";
		String toMail = email;
		String title = "잡동산 회원 아이디 찾기 이메일 입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다." +
				"<br><br>" + "인증 번호는 " + authNumber + "입니다." + "<br>" + "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		mailSend(setFrom, toMail, title, content);
		return Integer.toString(authNumber);
	}
	
	// 비밀번호 찾기 이메일 양식
	public void findPw(String email, String newPw) {
		String setFrom = "jobdongsan_@naver.com";
		String toMail = email;
		String title = "잡동산 회원 비밀번호 찾기 이메일 입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다." +
				"<br><br>" + "회원님의 비밀번호는 " + newPw + "입니다." + "<br>" + "새로 발급된 비밀번호를 사용해주시고, 꼭 비밀번호를 변경해주세요.";
		mailSend(setFrom, toMail, title, content);
	}
	
	// 랜덤함수로 임시비밀번호 생성
	public String getTempPassword(){
        char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

        String str = "";

        // 문자 배열 길이의 값을 랜덤으로 10개를 뽑아 구문을 작성함
        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }
        return str;
    }

	// 이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content, true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}