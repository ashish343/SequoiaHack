package com.servlet;

import java.io.IOException;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parse.ParseNotificationHelper;
import com.pusher.PusherHelper;
import com.pusher.rest.Pusher;

@WebServlet(
        name = "MyDataServlet", 
        urlPatterns = {"/data"}
    )
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	 ServletOutputStream out = resp.getOutputStream();
         String restId = req.getParameter("rId");
         String tableNo = req.getParameter("tableNo");
         
         Pusher pusher = new Pusher("63953", "1f7298f8e64c81a0d7de", "babae2b9781a276f1c7a");
         pusher.trigger("R1", "notify_order", Collections.singletonMap("message", tableNo));
         //PusherHelper.triggerPush("R2", "notify_order", "1", "");
         
        
         ParseNotificationHelper.notifyChannel(restId, tableNo, out);
         out.write(tableNo.getBytes());
         out.close();
    }
    
}