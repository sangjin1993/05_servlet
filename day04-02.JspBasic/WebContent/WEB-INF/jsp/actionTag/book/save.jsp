<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 정보 입력</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<form action="beans" name="bookSaveForm" method="post">
<!-- table>(tr>td*2)*6 -->
<table>
	<tr>
		<th colspan="2">
			책 정보 입력
		</th>
	</tr>
	<tr>
		<td>책 일련 번호</td>
		<td>
			<input type="number" name="sequence" required="required" />
		</td>
	</tr>
	<tr>
		<td>ISBN</td>
		<td>
			<input type="text" name="isbn" />
		</td>
	</tr>
	<tr>
		<td>도서 명</td>
		<td>
			<input type="text" name="title" />
		</td>
	</tr>
	<tr>
		<td>저자</td>
		<td>
			<input type="text" name="author" />
		</td>
	</tr>
	<tr>
		<td>출판사</td>
		<td>
			<input type="text" name="company" />
		</td>
	</tr>
	<tr>
		<td>페이지</td>
		<td>
			<input type="number" name="totalPage" />
		</td>
	</tr>
	<tr>
		<td>가격</td>
		<td>
			<input type="number" name="price" />
		</td>
	</tr>
	<tr>
		<td>재고수량</td>
		<td>
			<input type="number" name="quantity" />
		</td>
	</tr>
	<tr>
		<td>
			<input type="reset" value="초기화" />
			<input type="submit" value="저장하기" />
		</td>
	</tr>
</table>
</form>

</body>
</html>