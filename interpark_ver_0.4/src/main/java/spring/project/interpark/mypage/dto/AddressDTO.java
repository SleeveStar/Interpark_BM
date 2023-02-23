package spring.project.interpark.mypage.dto;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter
@Setter
@ToString
public class AddressDTO {
	private int num;
	private String addressname;
	private String address;
	private String phone;
}
