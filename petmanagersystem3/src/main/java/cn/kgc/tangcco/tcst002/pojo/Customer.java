package cn.kgc.tangcco.tcst002.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
	private int id;//客户编号
	private String customerName;//客户姓名
	private String customerPhone;//联系方式
	private String customerGender;//性别
	private int customerAge;//年龄
	private String customerAddress;//地址
	private int integral;//积分
	private int customerMember;//会员
	private double balance;//余额

}
