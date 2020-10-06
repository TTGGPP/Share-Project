package com.dashboardweb.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dashboardweb.vo.PgtRpppVO;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;

@WebServlet(urlPatterns = { "/pgt/rppp-chart-data" })
public class PgtRpppChartDataServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Gson gson = new Gson();
		String json = null;
		
			
		//AreaChartData areaChartData = loadAreaChartData();
		
		String path = 
				"http://127.0.0.1:5000/pgt/rppp-list?rppp=";
			
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
			
			PgtRpppVO[] rpppList = gson.fromJson(reader, PgtRpppVO[].class);
			
//			int t1 = 0, t2 = 0, t3 = 0, t4 = 0,
//				t5 = 0, t6 = 0, t7 = 0, t8 = 0, t9 = 0;
			String[] labels = new String[rpppList.length];
			Integer[] t1 = new Integer[rpppList.length];
			Integer[] t2 = new Integer[rpppList.length];
			Integer[] t3 = new Integer[rpppList.length];
			Integer[] t4 = new Integer[rpppList.length];
			Integer[] t5 = new Integer[rpppList.length];
			Integer[] t6 = new Integer[rpppList.length];
			Integer[] t7 = new Integer[rpppList.length];
			Integer[] t8 = new Integer[rpppList.length];
			Integer[] t9 = new Integer[rpppList.length];
			for (int i = 0; i < rpppList.length; i++) {
				PgtRpppVO rppp = rpppList[i];
				labels[i] = rppp.getRegion();
				t1[i] = rppp.getY2012();
				t2[i] = rppp.getY2013();
				t3[i] = rppp.getY2014();
				t4[i] = rppp.getY2015();
				t5[i] = rppp.getY2016();
				t6[i] = rppp.getY2017();
				t7[i] = rppp.getY2018();
				t8[i] = rppp.getY2019();
				t9[i] = rppp.getY2020();
			}
				
			AreaChartData areaChartData = new AreaChartData();
			areaChartData.setLabels( labels );
			areaChartData.append( t1 );
			areaChartData.append( t2 );
			areaChartData.append( t3 );
			areaChartData.append( t4 );
			areaChartData.append( t5 );
			areaChartData.append( t6 );
			areaChartData.append( t7 );
			areaChartData.append( t8 );
			areaChartData.append( t9 );
			json = gson.toJson(areaChartData);
			
			resp.setContentType("application/json;charset=utf-8");
			PrintWriter out = resp.getWriter();
			out.println(json);
			
		} else {
			result = String.format("%d 오류가 발생했습니다.", status);
		}
		
		conn.disconnect();
		
	}	
	
	class AreaChartData {
		String[] labels;
		ArrayList<Object[]> datasets = new ArrayList<>();
		
		public AreaChartData() {}
		
		public void append(int[] is) {
			
		}

		public AreaChartData(String[] labels, ArrayList<Object[]> datasets) {
			this.labels = labels;
			this.datasets = datasets;
		}
		
		public String[] getLabels() {
			return labels;
		}
		public void setLabels(String[] labels) {
			this.labels = labels;
		}
		public List<Object[]> getDatasets() {
			return datasets;
		}
		public void setDatasets(ArrayList<Object[]> datasets) {
			this.datasets = datasets;
		}
		public void append(Object[] data) {
			datasets.add(data);
		}
	}	
}

