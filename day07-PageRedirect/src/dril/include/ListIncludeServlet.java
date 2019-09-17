package dril.include;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 */
@WebServlet("/listinclude")
public class ListIncludeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 응답 객체 한글 설정
		response.setContentType("text/html; charset=utf-8");
		
		// 과일 목록
		List<String> fruits = new ArrayList<>();
		
		fruits.add("복숭아");
		fruits.add("사과");
		fruits.add("수박");
		fruits.add("키위");
		fruits.add("깔라만시");
		fruits.add("망공");
		fruits.add("체리");
		fruits.add("두리안");
		
		request.setAttribute("fruits", fruits);
		
		RequestDispatcher reqd = request.getRequestDispatcher("listJsp");
		
		reqd.include(request, response);
	}

}
