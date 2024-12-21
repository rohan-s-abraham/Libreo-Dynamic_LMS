/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import dbConnect.DBContext;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<User> getAllUser() {
        ArrayList<User> users = new ArrayList<>();
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement("SELECT * FROM USER");
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getBoolean("role"));
                user.setName(rs.getString("name"));
                user.setAvt(rs.getString("avt"));
                user.setSex(rs.getBoolean("sex"));
                user.setDatebirth(rs.getString("datebirth"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("gmail"));
                if (!user.isRole()) {
                    users.add(user);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return users;
    }

    public User findUser(String username, String password) {
        User user = null;
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getBoolean("role"));
                user.setName(rs.getString("name"));
                user.setAvt(rs.getString("avt"));
                user.setSex(rs.getBoolean("sex"));
                user.setDatebirth(rs.getString("datebirth"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("gmail"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    public User findUserByUsername(String username) {
        User user = null;
        String sql = "SELECT * FROM USER WHERE username = ?";
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getBoolean("role"));
                user.setName(rs.getString("name"));
                user.setAvt(rs.getString("avt"));
                user.setSex(rs.getBoolean("sex"));
                user.setDatebirth(rs.getString("datebirth"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("gmail"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    public void insertUser(User user) {
        conn = null;
        ps = null;
        String sql = "INSERT INTO USER (username, password, role, name, avt, sex, datebirth, phone, gmail) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setBoolean(3, user.isRole());
            ps.setString(4, user.getName());
            if (user.getAvt() == null) {
                if (user.isSex() == true) {
                ps.setString(5, "img/avt/M.jpg");
                } 
                else {
                ps.setString(5, "img/avt/F.png");
                }
            } else {
                ps.setString(5, user.getAvt());
            }

            ps.setBoolean(6, user.isSex());
            ps.setString(7, user.getDatebirth());
            ps.setString(8, user.getPhone());
            ps.setString(9, user.getGmail());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void deleteUser(String username) {
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement("DELETE FROM user WHERE username = ?");
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void updateUser(User user) {
        DBContext db = new DBContext();
            try {
                conn = db.getConnection();
            
            //Retrieve the current avatar from the database if the new avatar is not provided
                String currentAvt = user.getAvt();
            if (currentAvt == null || currentAvt.isEmpty()) {
                String selectSql = "SELECT avt FROM USER WHERE username = ?";
                PreparedStatement selectPs = conn.prepareStatement(selectSql);
                selectPs.setString(1, user.getUsername());
                ResultSet rs = selectPs.executeQuery();
            if (rs.next()) {
                currentAvt = rs.getString("avt");
            }
            rs.close();
            selectPs.close();
            } else {
            // Prepend the path for the new avatar
            currentAvt = "img/avt/" + currentAvt;
            }
            
            String sql = "UPDATE USER "
                    + "SET password=?, role=?, name=?, avt=?, sex=?, datebirth=?, phone=?, gmail=? "
                    + "WHERE username=?";
            ps = conn.prepareStatement(sql);
           
            ps.setString(1, user.getPassword());
            ps.setBoolean(2, user.isRole());
            ps.setString(3, user.getName());
            ps.setString(4, currentAvt);
            ps.setBoolean(5, user.isSex());
            ps.setString(6, user.getDatebirth());
            ps.setString(7, user.getPhone());
            ps.setString(8, user.getGmail());
            ps.setString(9, user.getUsername());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
    public void updateUserByAdmin(User user1) {
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            String sql1 = "UPDATE USER "
                    + "SET name=?, sex=?, datebirth=?, phone=?, gmail=? "
                    + "WHERE username=?";
            ps = conn.prepareStatement(sql1);
           
            ps.setString(1, user1.getName());
            ps.setBoolean(2, user1.isSex());
            ps.setString(3, user1.getDatebirth());
            ps.setString(4, user1.getPhone());
            ps.setString(5, user1.getGmail());
            ps.setString(6, user1.getUsername());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
}
