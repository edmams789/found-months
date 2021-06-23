<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Введите слово</h1>

        <br><br>
        <form action="showDetails" method="get">
            <input type="text" name="monthName"
                   placeholder="enter the string"/>
            <input type="submit" value="поиск"/>
        </form>
    </body>
</html>
