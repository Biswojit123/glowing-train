package com.biswo.cal;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String[] jokes = {
		"What is a room with no walls? A mushroom.",
		"Why do birds fly south in the winter? It’s faster than walking!",
		"What did the lava say to his girlfriend? I lava you!",
		"What social events do spiders love to attend? Webbings.",
		"Why is a football stadium always cold? It has lots of fans!",
		"What do you call two bananas on the floor? Slippers."
	};
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String but1 = request.getParameter("but1");
		
		//type casting perform
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
		
		//Take the another to response
		int ans;
		
		//logic for operation
		if(but1.equals("1"))
			ans = a + b ;
		else if(but1.equals("2"))
			ans = a - b ;
		else if(but1.equals("3"))
			ans = a * b ;
		else 
			ans = a / b ;
		
		//I want the random number so
		int randomIndex = (int) (Math.random() * jokes.length);
		String randomjoke = jokes[randomIndex];
		
		//response.getWriter().append("Ans = "+ans);
		
		response.sendRedirect("NewFile.jsp?ans="+ans+"&joke="+randomjoke);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
