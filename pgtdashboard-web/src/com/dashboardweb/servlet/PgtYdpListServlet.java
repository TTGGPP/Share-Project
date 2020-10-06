package com.dashboardweb.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dashboardweb.vo.PgtYdpVO;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;

@WebServlet(urlPatterns = { "/pgt/ydp-list" })
public class PgtYdpListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

String pricecat = req.getParameter("pricecat");
		
		String path = 
			"http://127.0.0.1:5000/pgt/ydp-list?pricecat=" + pricecat;
		
		// 자바 프로그램에서 다른 서버에 요청을 보내고 응답을 수신하는 도구
		URL url = new URL(path);		
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod("GET");
		
		String result = "";
		
		int status = conn.getResponseCode();
		if (status == 200) {
			// 네트워크를 통해 수신된 데이터를 읽는 도구 ( IO 객체 )
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is);
			
			JsonReader reader = new JsonReader(isr);
			Gson gson = new Gson();
			
			PgtYdpVO[] ydpList = gson.fromJson(reader, PgtYdpVO[].class);
			req.setAttribute("ydp-list", ydpList);			
			
		} else {
			result = String.format("%d 오류가 발생했습니다.", status);
		}
		
		conn.disconnect();
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/pgt-ydp-list.jsp");
		dispatcher.forward(req, resp);

	}

}
