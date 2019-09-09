<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(4) EL 내장객체 사용</title>
</head>
<body>
<%
	// 이 페이지에 진입했을 때, 어트리뷰트로 리스트를 생성
	List<String> stars = new ArrayList<>();

	stars.add("정우성");
	stars.add("서태지");
	stars.add("유재석");
	stars.add("배용준");
	stars.add("김태희");
	
	// 생성된 목록을 request 에 어트리뷰트로 추가
	request.setAttribute("stars", stars);
%>
<h3>EL 로 내장객체인 request 에 추가된 어트리뷰트(목록객체) 추출</h3>
JSP 내장객체 : request <br />
EL 내장객체 : requestScope <br />
<br />
내장객체에 .(도트) 연산자로 어트리뷰트 이름을 주어 접근 <br />
목록객체의 경우 인덱스를 나타내는 괄호 [숫자]로 각 원소에 접근 <br />
<hr />
<ol>
	<li>\${requestScope.stars[0]} = ${requestScope.stars[0]}</li>
	<li>\${requestScope.stars[1]} = ${requestScope.stars[1]}</li>
	<li>\${stars[2]} = ${stars[2]} <br />
		requestScope 객체명을 생략.
		다른내장객체(pageScope, sessionScope, applicationScope)
		stars 라는 이름으로 추가된 attribute가 존재하지 않으므로
		내장객체의 범위 이름을 생략가능
	</li>
	<li>\${stars["3"]} = ${stars["3"]} <br />
		원소에 접근하는 인덱스를 쌍따옴표로 묶어도 인식 됨.
	</li>
	<li>\${reqeistScope["stars"][4]} = ${reqeistScope["stars"][4]} <br />
		.(도트) 연산자 대신[""](브래킷 연산자 + 쌍따옴푶) 를 사용해도 접근 가능
	</li>
</ol>

<%
	// 맵객체 생성
	Map<String, String> starMap = new HashMap<>();
	
	starMap.put("S01", "아이유");
	starMap.put("S02", "여진구");
	starMap.put("S03", "피오");
	starMap.put("S04", "방탄:랩몬");
	starMap.put("S05", "방탄:뷔");
	
	// 맵 객체를 request에 attribute 로 추가
	request.setAttribute("starMap", starMap);
%>
<hr />
<h3>EL 에서 내장객체인 requestScope 에 추가된 맵객체 추출</h3>
.(도트) 연산자로 맵객체 이름으로 접근 후 <br />
[](브래킷) 연산자로 맵의 키값으로 접근하여 맵의 value 를 추출 <br />

<ol>
	<li>\${requestScope.starMap["S01"]} = ${requestScope.starMap["S01"]}</li>
	<li>\${requestScope.starMap["S02"]} = ${requestScope.starMap["S02"]}</li>
	<li>\${starMap["S03"]} = ${starMap["S03"]}</li>
	<li>\${starMap["S04"]} = ${starMap["S04"]}</li>
	<li>\${starMap.S05} = ${starMap.S05}</li>
</ol>
<hr />
<h3>scriptlet, expression Tag 사용한 목록 attribute 추출</h3>
<%
	//request 객체에서 stars 라는 이름의 목록 attribute 추출
	List<String> starNames;
	starNames = (List<String>) request.getAttribute("stars");
%>

<ol>
	<li>&lt;%starName.get(0) %&gt; = <%=starNames.get(0) %></li>
	<li>&lt;%starName.get(1) %&gt; = <%=starNames.get(1) %></li>
	<li>&lt;%starName.get(2) %&gt; = <%=starNames.get(2) %></li>
	<li>&lt;%starName.get(3) %&gt; = <%=starNames.get(3) %></li>
	<li>&lt;%starName.get(4) %&gt; = <%=starNames.get(4) %></li>
</ol>

<h3>scriptlet, expression Tag 사용한 맵 attribute 추출</h3>
<%
	// request 객체에서 startMap이라는 이름의 attribute 추출
	Map<String, String> starNameMap;
	starNameMap = (Map<String, String>) request.getAttribute("starMap");
%>
<ol>
	<li>&lt;%=starNameMap.get("S01") %&gt; = <%=starNameMap.get("S01")%></li>
	<li>&lt;%=starNameMap.get("S02") %&gt; = <%=starNameMap.get("S02")%></li>
	<li>&lt;%=starNameMap.get("S03") %&gt; = <%=starNameMap.get("S03")%></li>
	<li>&lt;%=starNameMap.get("S04") %&gt; = <%=starNameMap.get("S04")%></li>
	<li>&lt;%=starNameMap.get("S05") %&gt; = <%=starNameMap.get("S05")%></li>
</ol>


</body>
</html>