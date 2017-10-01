/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tvmaster.categoria;

import java.util.ArrayList;
import com.tvmaster.canal.Canal;

/**
 *
 * @author Bianca
 */
public class Categoria {
    private String nome;
    private int codigo;
    private float valor;
    ArrayList <Canal> canais = new ArrayList <Canal>();

    public Categoria(String nome, int codigo) {
        this.nome = nome;
        this.codigo = codigo;
    }

    @Override
    public String toString() {
        return "Categoria{" + "nome=" + nome + ", codigo=" + codigo + ", valor=" + valor + ", canais=" + canais + '}';
    }

   
    public void addCanal(Canal a){
        canais.add(a);
    }
    
    public float calcValor(){
        float preco=0;
        for (int i=0;i<canais.size();i++){
            float a = canais.get(i).getPreco();
            preco = preco+a;
        }
        setValor(preco);
        return preco;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }
    
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public ArrayList<Canal> getCanais() {
        return canais;
    }

    public void setCanais(ArrayList<Canal> canais) {
        this.canais = canais;
    }
    
     
    
}