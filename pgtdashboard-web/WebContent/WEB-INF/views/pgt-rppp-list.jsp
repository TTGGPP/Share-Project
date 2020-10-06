<%@page import="com.dashboardweb.vo.PgtRpppVO"%>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8"
    	 pageEncoding="utf-8" %>
    	 
				<table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <!--<th>APT.NAME</th>-->
                      <th>REGION</th>
                      <th>Y2012</th>
                      <th>Y2013</th>
                      <th>Y2014</th>
                      <th>Y2015</th>
                      <th>Y2016</th>
                      <th>Y2017</th>
                      <th>Y2018</th>
                      <th>Y2019</th>
                      <th>Y2020</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<%
                  		PgtRpppVO[] rpppList =
                  	                  		(PgtRpppVO[])request.getAttribute("rppp-list");
                  	%>
                  	<%
                  		for (PgtRpppVO rppp : rpppList) {
                  	%>
                    <tr>
                      <td><%= rppp.getRegion() %></td>
					  <td><%= rppp.getY2012() %></td>
					  <td><%= rppp.getY2013() %></td>
					  <td><%= rppp.getY2014() %></td>
					  <td><%= rppp.getY2015() %></td>
					  <td><%= rppp.getY2016() %></td>
					  <td><%= rppp.getY2017() %></td>
					  <td><%= rppp.getY2018() %></td>
					  <td><%= rppp.getY2019() %></td>
					  <td><%= rppp.getY2020() %></td>
                    </tr>
                    <% } %>
                  </tbody>
                </table>
                
                
                
                
                