package cn.kgc.tangcco.tcst002.pojo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Immune {
	private int id;//免疫单编号
	private int petId;//宠物id
	private Date inputDate;//录入日期
	private int staffId;//录入负责人
	private int customerId;//客户id
	private String petName;//宠物姓名
	private String customerName;//客户姓名
	private String employee_Name;//员工姓名

}
