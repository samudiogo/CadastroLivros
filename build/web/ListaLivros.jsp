<%-- 
    Document   : ListaLivros
    Created on : Aug 25, 2015, 11:42:39 PM
    Author     : Samuel
--%>

<%@page import="model.Livro"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Confira nossos livros</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Ano</th>
                        <th>Preço</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Livro> livrinhos = (List<Livro>) session.getAttribute("ListaLivros");
                        if (livrinhos == null) {
                            out.print("<tr><td colspan='3'>lista vazia..</td></tr>");
                        } else {
                            for (Livro item : livrinhos) {
                                out.print("<tr><td>" + item.getNome() + "</td>"
                                        + "<td>" + item.getAnoLancamento() + "</td>"
                                        + "<td>R$ " + item.getPreco() + "</td></tr>");
                            }
                        }
                    %>
                </tbody>
            </table>
                <hr>
                
                <p>
                    <a href="LivroCadastro.jsp" class="btn btn-sm btn-danger">Voltar </a>
            </p>
        </div>

    </body>
</html>
