package cn.kgc.tangcco.tcst002.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin {
	private int administrators_Num;// 管理员编号
	private String administrators_Name;// 管理员姓名
	private String administrators_Password;// 管理员密码
}
