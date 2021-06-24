<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <title>CSS Table Border</title>
    <meta charset="UTF-8"/>
    <style>
        .table1  {
           border: 1px solid red;
        }
 
        .table1 th {
           border: 1px solid blue;
           padding: 5px;
 
        }
 
        .table1 td {
           border: 1px dashed green;
           padding: 5px;
        }
    </style>
        
    </head>
    <body>
        <h3>Введите слово</h3>

        <br><br>
        <form action="showDetails" method="get">
            <input type="text" name="monthName"
                   placeholder="enter the string"/>
            <input type="submit" value="поиск"/>
        </form>
        
        <br><br>
        <table class="table1">
            <tr>
                <th>Number</th> 
                <th>Name of the month</th>                
            </tr>
            </table>
    </body>
</html>
