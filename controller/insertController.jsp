<%@include file="../inc/connect.jsp"%>

<%
  String bookName = request.getParameter("bookName");

  if(bookName.isEmpty()) {
    response.sendRedirect("../index.jsp");
  }
  else {
    String query = String.format("INSERT INTO books (bookName) VALUES ('%s')", bookName);
    st.executeUpdate(query);
    response.sendRedirect("../index.jsp");
  }
%>