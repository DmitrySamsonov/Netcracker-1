<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>База Данных</title>
    <link href="css/style_viewdata.css" rel="stylesheet" type="text/css">
</head>
<body>


<div class="main">
<%
    try
    {
        InitialContext ic = new InitialContext();
        DataSource ds = (DataSource) ic.lookup("jdbc/Business");
        Connection conn = ds.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(request.getParameter("sql_request")); //select * from business.products

        ResultSetMetaData rsmd = rs.getMetaData();
        int columnsNumber = rsmd.getColumnCount();

        %>
        <table>
            <tr>
                <%
                for(int i = 1; i <= columnsNumber; i++)
                {
                    %>
                    <th><h4> <%=rsmd.getColumnName(i)%> </h4></th>
                    <%
                }
                %>
            </tr>

            <% while (rs.next()) {  %>
                <tr>
                    <%
                    for(int i = 1; i <= columnsNumber; i++)
                    {
                        %>
                        <td> <%=rs.getString(i)%> </td>
                        <%
                    }
                    %>
                </tr>
            <% } %>

        </table>
        <%

      }
      catch (SQLException se)
      {
        Logger.getLogger(se.getMessage()).log(Level.SEVERE, null, se);
      }
      catch (NamingException ne)
      {
        Logger.getLogger(ne.getMessage()).log(Level.SEVERE, null, ne);
      }


%>
    <div class="footer">
        Разработчик: Дмитрий Самсонов, 2016 г
    </div>
</div>
</body>
</html>
