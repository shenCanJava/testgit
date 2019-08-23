package cn.kgc.tangcco.tcst002.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pet {
	private int id;//宠物id
	private  String petName;//宠物名称
	private int petAge;//宠物年龄
	private String petGender;//宠物性别
	private int customerId;//客户id
	private int petShape;//宠物体型
	private String petVarieties;//宠物品种
	private float petWeight;//宠物重量
	private int serviceStatus;//服务状态
	private String customerName;//宠物主人
	private String petType;//宠物体型
	private String statusName;//状态名称

}
