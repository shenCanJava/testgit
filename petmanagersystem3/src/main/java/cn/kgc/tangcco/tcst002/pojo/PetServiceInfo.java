package cn.kgc.tangcco.tcst002.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PetServiceInfo {
	private int id;//服务编号
	private String serviceName;//服务名称
	private double smallShortPrice;//小型短毛价格
	private double smallLongPrice;//小型长毛价格
	private double mediumShortPrice;//中型短毛价格
	private double mediumLongPrice;//中型长毛价格
	private double bigShortPrice;//大型短毛价格
	private double bigLongShortPrice;//大型长毛价格

}
