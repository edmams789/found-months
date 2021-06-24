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
        <h3>Результаты запроса!</h3>

        <br>
        <br>
        

        На Ваш запрос: ${monthNameAttr} было найдено 

        <br><br>
        <table>
            <tr>
                <th>Number</th> 
                <th>Name of the month</th>                
            </tr>

            <c:forEach var="month" items="${findingMatches}">         
                
                <tr>
                    <td> ${month.number}</td>
                    <td> ${month.name}</td>
                    <td>
                        <input type="button" value="Update" 
                               onclick="window.location.href = 'updateMonth'"/>

                        <input type="button" value="Delete" 
                               onclick="window.location.href = 'deleteMonth'"/>
                    </td>
                    </td>
                </tr>
            </c:forEach>
          
        </table>  
        <br>
        <input type="button" value="Add"
               onclick =" window.location.href='addNewMonth'"/>
    </body>
</html>
