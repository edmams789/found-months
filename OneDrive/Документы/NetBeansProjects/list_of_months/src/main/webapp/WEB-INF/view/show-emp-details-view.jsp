<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Результаты запроса!</h1>

        <br>
        <br>
        <br>

        На Ваш запрос: ${monthNameAttr} было найдено 

        <table>
            <tr>
                <th>Number</th>
            <br>
                <th>Name of the month</th>                
            </tr>

            <c:forEach var="month" items="${findingMatches}">         
                
                <tr>
                    <td> ${month.number}</td>
                    <td> ${month.name}</td>
                    <td>
                        <input type="button" value="Update" 
                               onclick="window.location.href = '${updateBatton}'"/>

                        <input type="button" value="Delete" 
                               onclick="window.location.href = '${deleteBatton}'"/>
                    </td>
                    </td>
                </tr>
            </c:forEach>
          
        </table>        
    </body>
</html>
