package kr.th.auction.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	String me_id;
	String me_pw;
	String me_email;
	String me_post_num;
	String me_road_name;
	String me_detail_address;
	String me_phone;
	String me_name;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date me_birth;
	int me_certification;
	int me_authority;
	String me_account;
	int me_complation_number;
	int me_reported_number;
	Date me_join_time;
	String me_region;
	String me_customer_certification;
	String me_session_id;
	Date me_session_limit;
	String me_ml_name;
	
/*	
public String getMe_birth() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		if(me_birth == null) {
			return null;
		}
	return date.format(me_birth);
 	}
 	*/
public String getMe_join_time() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(me_join_time == null) {
			return null;
		}
	return date.format(me_join_time);
 	}
public String getMe_session_limit() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(me_session_limit == null) {
			return null;
		}
	return date.format(me_session_limit);
 	}
}
	
	
