$(document).ready(
				function() {
					$(".save")
							.click(
									function() {
										var id = $(".addAdministratorsNum")
												.val().trim();
										var administrators_Name = $(
												".addAdministratorsName").val()
												.trim();
										var administrators_Password = $(
												".addAdministratorsPassword")
												.val().trim();
										if (administrators_Num = ""
												|| administrators_Name == ""
												|| administrators_Password == "") {
											alert("请填写完整信息！");
											return;
										}
										if (isNaN(id)) {
											alert("管理员编号必须是数字！");
											return;
										}
										var json = {
											"administrators_Num" : id,
											"administrators_Name" : administrators_Name,
											"administrators_Password" : administrators_Password
										}
										$.post($(".path").val()
												+ "/admin/insertInfo", json,
												function(result) {
													if (result > 0) {
														alert("添加成功！");
														location.href=$(".path").val()+"/admin/query.html";
													} else {
														alert("添加失败！");
														return;
													}
												})
									})
					$(".reset").click(function() {
						$(".addAdministratorsNum").val("");
						$(".addAdministratorsName").val("");
						$(".addAdministratorsPassword").val("");

					})

					$("a[no]").click(
							function() {
								var no = $(this).attr("no");
								var administrators_Name = $(
										".selectAdministratorsInfoName").val()
										.trim();
								var administrators_Password = $(
										".selectAdministratorsInfoType").val()
										.trim();
								location.href = $(".path").val()
										+ "/admin/query.html?currentPageNo="
										+ no + "&administrators_Name="
										+ administrators_Name
										+ "&administrators_Password="
										+ administrators_Password;
							})
					$(".select")
							.click(
									function() {
										var administrators_Name = $(
												".selectAdministratorsInfoName")
												.val().trim();
										var administrators_Password = $(
												".selectAdministratorsInfoType")
												.val().trim();
										location.href = $(".path").val()
												+ "/admin/query.html?administrators_Name="
												+ administrators_Name
												+ "&administrators_Password="
												+ administrators_Password;
									})
					$(".tiao").click(
							function() {
								var go = $(".go").val().trim();
								if (go == "") {
									alert("请输入页码！");
									return;
								}
								if (isNaN(go)) {
									alert("请输入数字！");
									$(".go").val("");
									return;
								}
								var lastPage = $(".lastPage").val();
								if (go < 1) {
									alert("页码不能小于1！");
									$(".go").val("");
									return;
								}
								if (go > lastPage) {
									alert("请输入正确页码！");
									$(".go").val("");
									return;
								}
								var administrators_Name = $(
										".selectAdministratorsInfoName").val()
										.trim();
								var administrators_Password = $(
										".selectAdministratorsInfoType").val()
										.trim();
								location.href = $(".path").val()
										+ "/admin/query.html?currentPageNo="
										+ go + "&administrators_Name="
										+ administrators_Name
										+ "&administrators_Password="
										+ administrators_Password;

							})
					$(".xiuGai")
							.click(
									function() {
										var id = $(this).prev().val();
										$
												.post(
														$(".path").val()
																+ "/admin/queryInfoById",
														"administrators_Num="
																+ id,
														function(result) {
															if (result != null) {
																$(
																		".updateAdministratorsNum")
																		.val(
																				result.administrators_Num);
																$(
																		".updateAdministratorsName")
																		.val(
																				result.administrators_Name);
																$(
																		".updateAdministratorsPassword")
																		.val(
																				result.administrators_Password);
															} else {
																alert("没有数据！");
																return;
															}
														})
									})
									$(".btnUpdate").click(function() {
										var id = $(".updateAdministratorsNum").val();
										var administrators_Name=$(".updateAdministratorsName").val().trim();
										var administrators_Password=$(".updateAdministratorsPassword").val().trim();
										var json={
												"administrators_Num":id,
												"administrators_Name":administrators_Name,
												"administrators_Password":administrators_Password
										}
										$.post($(".path").val()+"/admin/updateInfo",json,function(result){
											if(result>0){
												alert("修改成功！");
												location.href=$(".path").val()+"/admin/query.html";
											}else{
												alert("修改失败！");
												return;
											}
											
										})
									})
									$(".shanChu").click(function() {
									var bo=confirm("您确定要删除吗？");
									if(bo==false){
										return;
									}
									var id=$(this).prev().prev().val();
									$.post($(".path").val()+"/admin/removeInfo","id="+id,function(result){
										if(result>0){
											alert("删除成功！");
											location.href=$(".path").val()+"/admin/query.html";
										}else{
											alert("删除失败！");
											return;
										}
										
									})
									})
									
					$(".btnReset").click(function() {
						$(".updateAdministratorsNum").val("");
						$(".updateAdministratorsName").val("");
						$(".updateAdministratorsPassword").val("");
					})
				})