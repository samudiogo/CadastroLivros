<%-- 
    Document   : LivroCadastro
    Created on : Aug 25, 2015, 10:51:50 PM
    Author     : Samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    </head>
    <body>
        <div class="container">
            <h1>Cadastro de livro</h1>
            <%
                if (session.getAttribute("msg") != null && !session.getAttribute("msg").equals("")) {
            %>
            <div class="alert alert-success text-center">
                <p><%= session.getAttribute("msg")%></p>
            </div>

            <%
            session.setAttribute("msg","");
                }
            %>
            <hr>
            <form class="form-horizontal" action="Conexao" style="max-width: 500px;" method="POST">
                <input type="hidden" name="comando" value="cadastro">
                <div class="form-group">
                    <label for="nome" class="col-sm-2 control-label">Nome:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="digite o nome do livro" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="anoLancamento" class="col-sm-2 control-label">Ano:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="anoLancamento" name="anoLancamento" placeholder="digite o ano do lancamento" maxlength="4" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="preco" class="col-sm-2 control-label">Preço:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="preco" name="preco" placeholder="digite o preco do livro" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" class="btn-sm btn-primary btn-block" value="cadastrar"/>
                    </div>
                </div>
            </form>
            <hr>
            <p>
                <a href="ListaLivros.jsp" class="btn btn-sm btn-success">Listar </a>
            </p>
        </div>
    </body>
</html>
