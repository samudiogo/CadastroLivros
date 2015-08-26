/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.UUID;

/**
 *
 * @author Samuel
 */
public class Livro {
    
    private String LivroId;    
    private String Nome;
    private int AnoLancamento;
    private double Preco;
    
    public Livro(){
         UUID uuid = UUID.randomUUID();
         this.setLivroId(uuid.toString());
    }
    
    public String getLivroId() {
        return LivroId;
    }

    private void setLivroId(String LivroId) {
        this.LivroId = LivroId;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public int getAnoLancamento() {
        return AnoLancamento;
    }

    public void setAnoLancamento(int AnoLancamento) {
        this.AnoLancamento = AnoLancamento;
    }

    public double getPreco() {
        return Preco;
    }

    public void setPreco(double Preco) {
        this.Preco = Preco;
    }
    
    
    
}
