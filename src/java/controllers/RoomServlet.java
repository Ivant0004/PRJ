package controllers;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Room;

@WebServlet("/rooms")
public class RoomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String dateStr = request.getParameter("date");
            String startTimeStr = request.getParameter("startTime");
            String endTimeStr = request.getParameter("endTime");
            
            if (dateStr != null && startTimeStr != null && endTimeStr != null) {
                Date bookingDate = Date.valueOf(dateStr);
                Time startTime = Time.valueOf(startTimeStr + ":00");
                Time endTime = Time.valueOf(endTimeStr + ":00");
                
                List<Room> availableRooms = Room.getAvailableRooms(bookingDate, startTime, endTime);
                request.setAttribute("rooms", availableRooms);
            }
            
            request.getRequestDispatcher("/rooms.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Error retrieving rooms", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Integer customerId = (Integer) request.getSession().getAttribute("customerId");
            if (customerId == null) {
                response.sendRedirect("login");
                return;
            }

            int roomId = Integer.parseInt(request.getParameter("roomId"));
            Date bookingDate = Date.valueOf(request.getParameter("date"));
            Time startTime = Time.valueOf(request.getParameter("startTime") + ":00");
            Time endTime = Time.valueOf(request.getParameter("endTime") + ":00");
            String purpose = request.getParameter("purpose");

            Room room = new Room();
            room.setId(roomId);
            
            if (room.bookRoom(customerId, bookingDate, startTime, endTime, purpose)) {
                request.setAttribute("success", "Room booked successfully!");
            } else {
                request.setAttribute("error", "Room is no longer available for the selected time slot.");
            }
            
            doGet(request, response);
        } catch (Exception e) {
            throw new ServletException("Error booking room", e);
        }
    }
}
