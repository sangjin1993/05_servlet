package dril.forward;

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
 * 1. String 으로 과일 이름을 저장하는 목록을 생성한 후
 * 2. 생성한 목록을 요청객체에 추가
 * 3. forward 방식으로 listJsp 로 전달
 */
@WebServlet("/listforward")
public class ListForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		
		reqd.forward(request, response);
				
		
	}

}
