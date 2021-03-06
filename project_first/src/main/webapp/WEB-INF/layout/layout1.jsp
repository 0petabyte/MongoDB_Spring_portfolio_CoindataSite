<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
	<head>
		<meta charset="utf-8">
		<c:set var="root" value="<%=request.getContextPath()%>" />
		<link rel="stylesheet" type="text/css" href="${root}/css/layoutstyle.css">
		<title>Welcome</title>
	</head> 
	<body>
		<div id="top">
			<tiles:insertAttribute name="header"/>
		</div>
				<div id="right1">
			<tiles:insertAttribute name="right1"/>
		</div>
						<div id="right2">
			<tiles:insertAttribute name="right2"/>
		</div>
		<div id="body">
			<tiles:insertAttribute name="body"/>
		</div>

<%-- 		<div id="right2">
			<tiles:insertAttribute name="right2"/>
		</div>	 --%>
	</body>
</html>