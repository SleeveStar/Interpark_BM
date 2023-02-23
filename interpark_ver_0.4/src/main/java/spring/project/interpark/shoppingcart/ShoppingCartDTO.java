package spring.project.interpark.shoppingcart;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component

@Setter

@Getter

@ToString

public class ShoppingCartDTO {

	private int productnumber;
	private String productName;
	private int price;
	private String seller;
	private int quantity;
	private int discountPrice;
	private int shipping;
	private Date regdate;

}