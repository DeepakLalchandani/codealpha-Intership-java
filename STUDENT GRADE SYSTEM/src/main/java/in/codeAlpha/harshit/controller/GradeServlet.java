package in.codeAlpha.harshit.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/GradeServlet")
public class GradeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String studentName = request.getParameter("name");
		int marks = Integer.parseInt(request.getParameter("marks"));
		String grade;
		String thought;

		if (marks >= 90 && marks <= 100) {
			grade = "A+";
			thought = "Excellent work! You’ve mastered this subject. Keep striving for greatness!";
		} else if (marks >= 80 && marks < 90) {
			grade = "A";
			thought = "Great job! Your hard work is clearly paying off.";
		} else if (marks >= 70 && marks < 80) {
			grade = "B+";
			thought = "Good effort! Keep pushing, and you’ll reach even higher.";
		} else if (marks >= 60 && marks < 70) {
			grade = "B";
			thought = "Well done! Consistency is key, and you’re on the right path.";
		} else if (marks >= 50 && marks < 60) {
			grade = "C";
			thought = "You’ve made it! Keep focusing, and improvements will follow.";
		} else if (marks >= 40 && marks < 50) {
			grade = "D";
			thought = "You passed! Don’t stop here, aim higher next time!";
		} else if (marks >= 0 && marks < 40) {
			grade = "F";
			thought = "Don't get discouraged! Failure is just a stepping stone. Keep learning and improving!";
		} else {
			grade = "Invalid";
			thought = "Please enter valid marks between 0 and 100.";
		}

		request.setAttribute("studentName", studentName);
		request.setAttribute("grade", grade);
		request.setAttribute("thought", thought);

		request.getRequestDispatcher("result.jsp").forward(request, response);
	}
}
