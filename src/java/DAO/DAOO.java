/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import dbConnect.DBContext;
import entity.TopBook;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBContext db = new DBContext();

    public ArrayList<TopBook> getTopBook() {
        ArrayList<TopBook> list = new ArrayList<>();
        String sql = "select b.name, A.Total from (select book_id, count(book_id) as Total from borrower where status != 'processing' group by book_id  order by Total desc limit 5) A\n"
                + "join book b\n"
                + "on A.book_id = b.id";
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                TopBook tb = new TopBook(rs.getString(1), rs.getInt(2));
                list.add(tb);
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
        return list;
    }

    public ArrayList<TopBook> getTopUser() {
        ArrayList<TopBook> list = new ArrayList<>();
        String sql = "select username, count(username) as Total from borrower where status != 'processing' group by username  order by Total desc limit 5";
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                TopBook tb = new TopBook(rs.getString(1), rs.getInt(2));
                list.add(tb);
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
        return list;
    }
}
