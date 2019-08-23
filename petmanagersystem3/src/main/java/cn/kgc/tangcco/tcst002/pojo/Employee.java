package cn.kgc.tangcco.tcst002.pojo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {
	private int employee_Number;//员工编号
	private String employee_Name;//员工姓名
	private String employee_Sex;//员工性别
	private int employee_Age;//员工年龄
	private Date employee_BornDate;//出生日期
	private String employee_Id_Number;//身份证号
	private String employee_EmailAddress;//邮箱地址
	private String employee_Phone;//联系电话
	private String employee_Address;//家庭住址
	private String employee_Native_Place;//籍贯
	private Date employee_Entry_Time;//入职时间
	private double employee_Wages;//工资
	private int employee_Status;//员工状态
	private String remark;//备注

}
