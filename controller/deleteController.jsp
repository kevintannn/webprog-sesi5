<%@include file="../inc/connect.jsp"%>

<%
  String id = request.getParameter("id");

  String query = String.format("DELETE FROM books WHERE id = '%s'", id);
  st.executeUpdate(query);
  response.sendRedirect("../index.jsp");
%>