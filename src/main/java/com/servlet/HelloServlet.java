package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parse.ParseNotificationHelper;
import com.pusher.PusherHelper;

@WebServlet(
        name = "MyDataServlet", 
        urlPatterns = {"/data"}
    )
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	 ServletOutputStream out = resp.getOutputStream();
         //String restId = req.getParameter("rId");
         String tableNo = req.getParameter("tableNo");
         PusherHelper.triggerPush("R1", "notify_order", tableNo, "");
         ParseNotificationHelper.notifyChannel("R1", tableNo, out);
         out.write(tableNo.getBytes());
         out.close();
    }
    
}