<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.*, java.text.*"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<title>Welcome</title>

	</head> 
	<body>
	<form action="write.do" method="post">
	<table class="table table-bordered" style="width:300px; margin: 0 auto;">
		
		<tr>
			<th style="width:100px;">아이디</th>
			<td>
				<input type="text" name="userid" autofocus="autofocus" required="required">
			</td>
		</tr>

		<tr>
			<th style="width:100px;">비밀번호</th>
			<td>
				<input type="password" name="userpasswd" required="required">
			</td>
		</tr>

			
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="회원가입" class="btn btn-sm btn-warning">
				<input type="button" value="돌아가기" class="btn btn-sm btn-success" onclick="location.href='allprice.do'">
			</td>
		</tr>
			
			
	</table>
		
		</form>
	</body>

