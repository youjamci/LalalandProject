package ticket.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ticket/date.do")
public class CalendarController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String selectedDate = request.getParameter("selectedDate");
        
        System.out.println("Selected Date: " + selectedDate);

        HttpSession session = request.getSession();
        
        session.setAttribute("selectedDate", selectedDate);

    }
}
