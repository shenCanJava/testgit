package cn.kgc.tangcco.tcst002.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int id;//编号
	private String productName;//名称
	private double purchasePrice;//进价
	private double price;//售价
	private String specifications;//规格
	private String type;//类型
	private int stock;//库存
	private int status;//状态
}
