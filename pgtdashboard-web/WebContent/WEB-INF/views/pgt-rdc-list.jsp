<%@page import="com.dashboardweb.vo.PgtRdcVO"%>
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
                  		PgtRdcVO[] rdcList =
                  	                  		(PgtRdcVO[])request.getAttribute("rdc-list");
                  	%>
                  	<%
                  		for (PgtRdcVO rdc : rdcList) {
                  	%>
                    <tr>
                      <td><%= rdc.getRegion() %></td>
					  <td><%= rdc.getY2012() %></td>
					  <td><%= rdc.getY2013() %></td>
					  <td><%= rdc.getY2014() %></td>
					  <td><%= rdc.getY2015() %></td>
					  <td><%= rdc.getY2016() %></td>
					  <td><%= rdc.getY2017() %></td>
					  <td><%= rdc.getY2018() %></td>
					  <td><%= rdc.getY2019() %></td>
					  <td><%= rdc.getY2020() %></td>
                    </tr>
                    <% } %>
                  </tbody>
                </table>
                
                
                
                
                