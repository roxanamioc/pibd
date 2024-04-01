<%-- 
    Document   : nou_Medic
    Created on : Nov 14, 2016, 1:08:21 PM
    Author     : vali
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adauga Locatie Fabrica</title>
        <style>
        	body {
        		font-family: 'Caveat', cursive;
        		background-image: url('https://i.pinimg.com/736x/56/2b/38/562b386c33b34ebeceea16b1fdc3f183.jpg');
		        background-size: cover;
		        background-position: center;
		        background-attachment: fixed;
		        color: #fff;
		        margin: 0;
		        padding: 0;
		        display: flex;
		        flex-direction: column;
		        align-items: center;
		        animation: fadeIn 1s ease-in-out;
		    }
		    header {
		        color: #fff;
		        padding: 15px 0;
		        text-align: center;
		    }
		
		    h1 {
		        font-size: 28px;
		    }
		
		    p {
		        margin: 10px 0;
		    }
		
		    a {
		        text-decoration: none;
		        color: #FFFFFF;
		        font-weight: bold;
		    }
		
		    a:hover {
		        color: #FF83EA;
		    }
		
		    table {
		        border-collapse: collapse;
		        width: 80%;
		        margin: 20px 0;
		    }
		
		    th, td {
		        border: 1px solid #ddd;
		        padding: 8px;
		        text-align: center;
		    }
		
		    th {
		        background-color: #007bff;
		        color: #fff;
		    }
		
		    input[type="checkbox"] {
		        transform: scale(1.5);
		    }
		
		    input[type="submit"] {
		        background-color: #CC66FF;
		        color: #fff;
		        padding: 10px 20px;
		        border: none;
		        cursor: pointer;
		        font-size: 16px;
		    }
		
		    input[type="submit"]:hover {
		        background-color: #83FFC3;
		    }
		
		    @keyframes fadeIn {
		        from {
		            opacity: 0;
		        }
		
		        to {
		            opacity: 1;
		        }
		    }
        </style>
    </head>
    <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
    <jsp:setProperty name="jb" property="*" />
    <body>
        <%
            String Oras = request.getParameter("Oras");
            String Tara = request.getParameter("Tara");
            if (Oras != null) {
                jb.connect();
                jb.adaugaLocatieFabrica(Oras, Tara);
                jb.disconnect();
        %>
        <p>Datele au fost adaugate.</p><%
        } else {
        %>
        <h1> Suntem in tabela Locatie Fabrica</h1>
        <form action="nou_Locatie_Fabrica.jsp" method="post">
            <table>
                <tr>
                    <td align="right">Oras Locatie Fabrica:</td>
                    <td> <input type="text" name="Oras" size="40" /></td>
                </tr>
                <tr>
                    <td align="right">Tara Locatie Fabrica:</td>
                    <td> <input type="text" name="Tara" size="30" /></td>
                </tr>
            </table>
            <input type="submit" value="Adauga locatie fabrica" />
        </form>
        <%
            }
        %>
        <br/>
        <a href="index.html"><b>Home</b></a>
        <br/>
    </body>
</html>