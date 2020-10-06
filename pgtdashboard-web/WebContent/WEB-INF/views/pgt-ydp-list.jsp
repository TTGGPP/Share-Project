<%@page import="com.dashboardweb.vo.PgtYdpVO"%>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8"
    	 pageEncoding="utf-8" %>
    	 
				<table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <!--<th>APT.NAME</th>-->
                      <th>APT.FLOOR</th>
                      <th>PERIOD.COMPLETED</th>
                      <th>PYUNG</th>
                      <th>PRICE.PER.PYUNG.PRESENT</th>
                      <th>SEO.RATIO</th>
                      <th>PRICECAT</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<%
                  		PgtYdpVO[] ydpList =
                  	                  		(PgtYdpVO[])request.getAttribute("ydp-list");
                  	%>
                  	<%
                  		for (PgtYdpVO ydp : ydpList) {
                  	%>
                    <tr>
                      <td><%= ydp.getApt_floor() %></td>
					  <td><%= ydp.getPeriod_completed() %></td>
					  <td><%= ydp.getPyung() %></td>
					  <td><%= ydp.getPrice_per_pyung_present() %>
					  <td><%= ydp.getSeo_ratio() %></td>
					  <td><%= ydp.getPrice_cat() %></td>
                    </tr>
                    <% } %>
                  </tbody>
                </table>
                
                
                
                
                