/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import DAO.BookDAO;
import DAO.BorrowerDAO;
import entity.Book;
import entity.Borrower;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author MSII
 */
public class ReturnBorrower extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("username") == null || session.getAttribute("role") == null || !session.getAttribute("role").equals("admin")) {
            resp.sendRedirect("Login");
            return;
        }
        String id = req.getParameter("id");
        if(id== null || id.length()== 0){
            resp.sendRedirect("HomePageAdmin");
            return;
        }
        
        //Update quanity of book when user return book
        String bookidStr= req.getParameter("bookid");
        int bookid=0;
        try {
            bookid= Integer.parseInt(bookidStr);
        } catch (Exception e) {
        }
        BookDAO bdao= new BookDAO();
        Book book= bdao.getBookById(bookid);
        book.setCurrent(book.getCurrent()+1);
        bdao.updateBook(book);
        
        //Update status borrow to Return, update date return when admin click button
        BorrowerDAO bDAO = new BorrowerDAO();
        Borrower b = bDAO.getBorrowerById(id);
        b.setStatus("Returned");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        //b.setBorrow_to(new Date().toString());
        b.setBorrow_to(dateFormat.format(calendar.getTime()));
        bDAO.updateBorrower(b);
        resp.sendRedirect("ListBorrowAdmin?action=borrowed");
    }

}
