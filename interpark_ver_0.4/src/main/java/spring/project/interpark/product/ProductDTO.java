package spring.project.interpark.product;

import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component

@Setter

@Getter

@ToString

public class ProductDTO {

	private int productnumber;
	private String productName;
	private int price;
	private String seller;
	private int quantity;
	private int discountPrice;
	private int shipping;
	private Date regdate;
	private MultipartFile file;
}
