package com.KoreaIT.java.Jsp_AM;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/printDan")
public class printDanServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		
		String inputedDan = request.getParameter("dan"); //TODO
		String inputedLimit = request.getParameter("limit"); //TODO

		if(inputedDan == null) { //TODO
			inputedDan = "1";
		}
		if(inputedLimit == null) { //TODO
			inputedLimit = "1";
		}

		int dan = Integer.parseInt(inputedDan); //TODO
		int limit = Integer.parseInt(inputedLimit); //TODO
		response.getWriter().append(String.format("==%d단==<br>", dan)); //TODO

		for (int i = 1; i <= limit; i++) {
			response.getWriter().append(String.format("%d * %d = %d<br>", dan, i, dan * i));
		}
	}

}