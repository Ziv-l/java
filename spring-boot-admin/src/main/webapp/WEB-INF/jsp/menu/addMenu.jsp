<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="stylesheets/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="stylesheets/style.css" />
<script type="text/javascript" src="javascripts/jquery.js"></script>
<script type="text/javascript" src="javascripts/jquery.sorted.js"></script>
<script type="text/javascript" src="javascripts/bootstrap.js"></script>
<script type="text/javascript" src="javascripts/ckform.js"></script>
<script type="text/javascript" src="javascripts/common.js"></script>

<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<script>
	$(function() {
		$('#backid').click(function() {
			window.location.href = "<%=request.getContextPath()%>/menu_manage";
		});

	});
</script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/addMenu" method="post" class="definewidth m20">
		<table class="table table-bordered table-hover m10">
			<tr>
				<td width="10%" class="tableleft">上级</td>
				<td>
					<select name="parentid">
						<option value="0">一级菜单</option>
						<option value='1' >&nbsp;系统管理 </option>
						<option value='7' >&nbsp;明信片管理</option>            
					</select>
				</td>
			</tr>
			<tr>
				<td class="tableleft">名称</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td class="tableleft">Group</td>
				<td><input type="text" name="group" /></td>
			</tr>
			<tr>
				<td class="tableleft">Model</td>
				<td><input type="text" name="module" /></td>
			</tr>
			<tr>
				<td class="tableleft">Action</td>
				<td><input type="text" name="action" /></td>
			</tr>
			<tr>
				<td class="tableleft">备注</td>
				<td><input type="text" name="remark" /></td>
			</tr>
			<tr>
				<td class="tableleft">状态</td>
				<td><input type="radio" name="status" value="0" checked /> 启用 <input
					type="radio" name="status" value="1" /> 禁用</td>
			</tr>
			<tr>
				<td class="tableleft"></td>
				<td>
					<button type="submit" class="btn btn-primary" type="button">保存</button>
					&nbsp;&nbsp;
					<button type="button" class="btn btn-success" name="backid"
						id="backid">返回列表</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
