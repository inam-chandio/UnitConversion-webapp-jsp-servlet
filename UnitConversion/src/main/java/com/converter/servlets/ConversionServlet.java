package com.converter.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ConversionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String inputValue = request.getParameter("inputValue");
        String inputUnit = request.getParameter("inputUnit");
        String targetUnit = request.getParameter("targetUnit");
        String studentResponse = request.getParameter("studentResponse");

        try {
            double studentValue = Double.parseDouble(studentResponse);
            double convertedValue = convert(inputValue, inputUnit, targetUnit);

            boolean isCorrect = Math.abs(convertedValue - studentValue) < 0.01;

            request.setAttribute("isCorrect", isCorrect);
            request.setAttribute("expectedValue", convertedValue);
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid input for numeric values. Please ensure all inputs are correct.");
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/result.jsp");
        dispatcher.forward(request, response);
    }

    private double convert(String inputValue, String inputUnit, String targetUnit) {
        // Placeholder for actual conversion logic
        // Implement unit conversion logic here
        return Double.parseDouble(inputValue); // This should be replaced with actual conversion logic
    }
}
