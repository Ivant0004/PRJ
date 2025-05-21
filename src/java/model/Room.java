package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.DBConnection;

public class Room {
    private int id;
    private String roomNumber;
    private int capacity;
    private int floor;

    public Room() {
    }

    public Room(int id, String roomNumber, int capacity, int floor) {
        this.id = id;
        this.roomNumber = roomNumber;
        this.capacity = capacity;
        this.floor = floor;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getRoomNumber() { return roomNumber; }
    public void setRoomNumber(String roomNumber) { this.roomNumber = roomNumber; }
    public int getCapacity() { return capacity; }
    public void setCapacity(int capacity) { this.capacity = capacity; }
    public int getFloor() { return floor; }
    public void setFloor(int floor) { this.floor = floor; }

    // Method to check if room is available for a specific time slot
    public boolean is_room_available(Date bookingDate, Time startTime, Time endTime) throws SQLException {
        String sql = "SELECT COUNT(*) FROM Bookings WHERE room_id = ? AND booking_date = ? " +
                    "AND ((start_time <= ? AND end_time > ?) OR (start_time < ? AND end_time >= ?))";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, this.id);
            stmt.setDate(2, bookingDate);
            stmt.setTime(3, endTime);
            stmt.setTime(4, startTime);
            stmt.setTime(5, endTime);
            stmt.setTime(6, startTime);
            
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) == 0;
            }
        }
        return false;
    }

    // Method to get all available rooms for a specific time slot
    public static List<Room> getAvailableRooms(Date bookingDate, Time startTime, Time endTime) throws SQLException {
        List<Room> availableRooms = new ArrayList<>();
        String sql = "SELECT r.* FROM Rooms r WHERE r.id NOT IN " +
                    "(SELECT room_id FROM Bookings WHERE booking_date = ? " +
                    "AND ((start_time <= ? AND end_time > ?) OR (start_time < ? AND end_time >= ?)))";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setDate(1, bookingDate);
            stmt.setTime(2, endTime);
            stmt.setTime(3, startTime);
            stmt.setTime(4, endTime);
            stmt.setTime(5, startTime);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Room room = new Room();
                room.setId(rs.getInt("id"));
                room.setRoomNumber(rs.getString("room_number"));
                room.setCapacity(rs.getInt("capacity"));
                room.setFloor(rs.getInt("floor"));
                availableRooms.add(room);
            }
        }
        return availableRooms;
    }

    // Method to book a room
    public boolean bookRoom(int customerId, Date bookingDate, Time startTime, Time endTime, String purpose) throws SQLException {
        if (!is_room_available(bookingDate, startTime, endTime)) {
            return false;
        }

        String sql = "INSERT INTO Bookings (room_id, customer_id, booking_date, start_time, end_time, purpose) " +
                    "VALUES (?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, this.id);
            stmt.setInt(2, customerId);
            stmt.setDate(3, bookingDate);
            stmt.setTime(4, startTime);
            stmt.setTime(5, endTime);
            stmt.setString(6, purpose);
            
            return stmt.executeUpdate() > 0;
        }
    }
}
