package middleProject.domain;

import lombok.Data;

@Data
public class CartInsertVO {
	
	private String member_id;
	private String goods_id;
	private Integer c_amount;
	
}
