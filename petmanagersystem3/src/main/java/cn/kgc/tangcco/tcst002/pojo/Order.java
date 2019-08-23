package cn.kgc.tangcco.tcst002.pojo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
	private int id;//编号
	private int petId;//宠物id
	private int staffId;//员工id
	private double money;//金额
	private int status;//状态
	private Date time;//时间
	private String petName;//宠物姓名
	private String employee_Name;//员工姓名
	private int customerId;//宠物主人id
	private Customer customer;//宠物主人
	

}
