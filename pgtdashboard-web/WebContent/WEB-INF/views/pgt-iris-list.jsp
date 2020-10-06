<%@page import="com.dashboardweb.vo.PgtIrisVO"%>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8"
    	 pageEncoding="utf-8" %>
    	 
				<table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th>SEPAL.LENGTH</th>
                      <th>SEPAL.WIDTH</th>
                      <th>PETAL.LENGTH</th>
                      <th>PETAL.WIDTH</th>
                      <th>SPECIES</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<%
                  		PgtIrisVO[] irisList =
                  	                  		(PgtIrisVO[])request.getAttribute("iris-list");
                  	%>
                  	<%
                  		for (PgtIrisVO iris : irisList) {
                  	%>
                    <tr>
                      <td><%= iris.getSepalLength() %></td>
					  <td><%= iris.getSepalWidth() %></td>
					  <td><%= iris.getPetalLength() %></td>
					  <td><%= iris.getPetalWidth() %></td>
					  <td><%= iris.getSpecies() %></td>
                    </tr>
                    <% } %>
                  </tbody>
                </table>
                
                
                
                
                