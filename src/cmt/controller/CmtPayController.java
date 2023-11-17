package cmt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmt.service.CmtPayService;
import cmt.service.CmtService;

@WebServlet("/cmt/cmtPay.do")
public class CmtPayController extends HttpServlet {

    CmtService cmtService = CmtService.getInstance();
    CmtPayService cmtPayService = CmtPayService.getInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cmtpCd = request.getParameter("cmtpCd");
        String cmtpMh = request.getParameter("cmtpMh");
        String cmtpSum = request.getParameter("cmtpSum");
        String cmtbCd = request.getParameter("cmtbCd");
        String cmtpDate = request.getParameter("cmtpDate"); 

    }
    
    
}