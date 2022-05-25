<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <%@include file="inc/connect.jsp"%>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Session Faiv</title>
  </head>
  <body>
    <form action="controller/insertController.jsp">
      <label for="bookName">Book Name: </label>
      <input id="bookName" type="text" name="bookName" />
      <input type="submit" value="Insert" />
    </form>
    <br />
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Book Name</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <% ResultSet result = null; String query = "SELECT * FROM books"; result
        = st.executeQuery(query); while(result.next()) { %>
        <tr>
          <td><%=result.getInt("id")%></td>
          <td><%=result.getString("bookName")%></td>
          <td>
            <a href="updateForm.jsp?id=<%=result.getInt("id")%>&bookName=<%=result.getString("bookName")%>">Update</a>
            <a href="controller/deleteController.jsp?id=<%=result.getInt("id")%>">Delete</a></td>
        </tr>
        <% } %>
      </tbody>
    </table>
  </body>
</html>
