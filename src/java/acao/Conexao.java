/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Livro;

/**
 *
 * @author Samuel
 */
@WebServlet(name = "Conexao", urlPatterns = "/Conexao")
public class Conexao extends HttpServlet  {

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession sessao = req.getSession(true);
        List<Livro> livros = (List<Livro>) sessao.getAttribute("ListaLivros");

        if (livros == null) {
            livros = new ArrayList<Livro>();
            sessao.setAttribute("ListaLivros", livros);
        }
        
        Livro  livrinho = new Livro();
        livrinho.setNome(req.getParameter("nome"));
        livrinho.setAnoLancamento(Integer.parseInt(req.getParameter("anoLancamento")));
        livrinho.setPreco(Double.parseDouble(req.getParameter("preco")));
        
        livros.add(livrinho);
        sessao.setAttribute("msg", "livro salvo com sucesso!");
        resp.sendRedirect("LivroCadastro.jsp");
        
        

    }
    
   
    

}
