<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Вы уверены в своем выборе?</h3>
        <tr>
        <tr>

                        <input type="button" value="YES" 
                               onclick="window.location.href = '${okBatton}'"/>

                        <input type="button" value="NO" 
                               onclick="window.location.href = '${noBatton}'"/>
                        

    </body>
</html>
