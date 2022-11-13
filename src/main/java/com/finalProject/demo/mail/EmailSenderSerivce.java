package com.finalProject.demo.mail;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class EmailSenderSerivce{
	
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendEmail(String toEmail,
						  String subject,
						  String body) {
		SimpleMailMessage message = new SimpleMailMessage()	;
		message.setFrom("chezmoi152@gmail.com");
		message.setTo(toEmail);
		message.setText(body);
		message.setSubject(subject);
		
		mailSender.send(message);
		
		System.out.println("Mail sent succseefully...");
	}
	
	public void sendImageMail(String toEmail,String subject,String text1,
			String text2,String text3,String text4,String text5,String text6,String text7,String text8) {
		
		try {
			MimeMessage mimeMessage = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,true);
			helper.setFrom("chezmoi152@gmail.com");
			helper.setTo(toEmail);
			helper.setSubject(subject);
			String content = "<html><body>"+"<p>"+text1+"</p>"+"<p>"+text2+"</p>"+"<p>"+text3+"</p>"+
					"<p>"+text4+"</p>"+"<p>"+text5+"</p>"+"<p>"+text6+"</p>"+"<p>"+text7+"</p>"+"<p>"+text8+"</p>"
			+"<img src='https://img.onl/EflgJ6'></img>"+"</body></html>"; 
			helper.setText(content,true);
			mailSender.send(mimeMessage);
		} catch (MessagingException e) {
			System.out.println("發送失敗");
		}
	}
	public void sendPaymentMail(String toEmail,String subject,String text1,
			String text2,String text3,String text4,String text5,String text6) {
		
		try {
			MimeMessage mimeMessage = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,true);
			helper.setFrom("chezmoi152@gmail.com");
			helper.setTo(toEmail);
			helper.setSubject(subject);
			String content = "<html><body>"+"<p>"+text1+"</p>"+"<p>"+text2+"</p>"+"<p>"+text3+"</p>"+
					"<p>"+text4+"</p>"+"<p>"+text5+"</p>"+"<p>"+text6+"</p>"
					+"<img src='https://img.onl/EflgJ6'></img>"+"</body></html>"; 
			helper.setText(content,true);
			mailSender.send(mimeMessage);
		} catch (MessagingException e) {
			System.out.println("發送失敗");
		}
	}
	
	public String sendForgotPwdEmail(String toEmail) {
        // 生成亂數字串6碼
        String theAlphaNumericS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder builder = new StringBuilder();
        for (int m = 0; m < 6; m++) {
            int index = (int) (theAlphaNumericS.length() * Math.random());
            builder.append(theAlphaNumericS.charAt(index));
        }
        String randomString = builder.toString();
        // 將亂數字串寄出
        
        SimpleMailMessage message = new SimpleMailMessage();
        // 設定寄件人
        message.setFrom("chezmoi152@gmail.com");
        // 設定收件人
        message.setTo(toEmail);
        // 設定信件主旨
        message.setSubject("Chezmoi忘記密碼Email驗證");
        // 設定信件內容
        message.setText("驗證碼:" + randomString);
        
        try {
            mailSender.send(message);
            System.out.println("忘記密碼信件送出成功");
            return randomString;
            
        } catch (Exception e) {
            System.out.println("忘記密碼信件發送失敗");
            return e.getMessage();
        }
    }

					
	
}
