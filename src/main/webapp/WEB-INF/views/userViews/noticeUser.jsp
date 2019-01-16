<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŀ��Ƽ�� �ȿ� �ִ� �л����� ���� ��������</title>
</head>
<body>

	<h1>��������</h1>
	
	<jsp:useBean id="dto" class="kh.coupon.mvc.dto.BoardDto" scope="request"></jsp:useBean>
	<select name="category">
		<option value="" selected="selected">--���޾�ü--</option>
		<option value="<jsp:getProperty property="user_no" name="dto"/>"> 7Gram </option>
		<option value="<jsp:getProperty property="user_no" name="dto"/>"> ����â�� </option>
		<option value="<jsp:getProperty property="user_no" name="dto"/>"> ������� </option>
	</select>
	
	<table>
		<col width="50"> <!-- board_no -->
		<col width="100"> <!-- user_name -->
		<col width="200"> <!-- boardt_title -->
		<col width="100"> <!-- board_date_create -->
		<col width="100"> <!-- board_category-->
		<col width="50"> <!-- board_count -->
		
		<tr>
			<th>�Խñ� ��ȣ</th>
			<th>�ۼ���</th>
			<th>����</th>
			<th>�ۼ���</th>
			<th>���޾�ü</th>
			<th>��ȸ��</th>
		</tr>
		
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td colspan="6"> --- �ۼ��� ���������� �����ϴ�. --- </td>				
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="dto" items="${list }">
					<tr align="center">
						<td>{dto.board_no}</td>
						<td>{dto.user_name}</td>
						<td>{dto.board_title}</td>
						<td>{dto.board_date_create}</td>
						<td>{dto.board_category}</td>
						<td>{dto.board_count}</td>
					</tr>								
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	
	
	
</body>
</html>