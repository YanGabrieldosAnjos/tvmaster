/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tvmaster.plano;

import com.tvmaster.categoria.Categoria;
import java.util.ArrayList;

/**
 *
 * @author Bianca
 */
public abstract class Plano {
    protected float preco;
    ArrayList <Categoria> categorias = new ArrayList<Categoria>();

    public void addCategoria(Categoria x){
        categorias.add(x);
    }

    @Override
    public String toString() {
        return "Plano{" + "preco=" + preco + ", categorias=" + categorias + '}';
    }
    
  
    public void imprimeCategorias(){
        for (int i=0; i<categorias.size();i++){
            if (categorias.get(i).getCodigo()==1){
                System.out.println("Há a categoria Filme neste pacote");
            }
            if (categorias.get(i).getCodigo()==2){
                System.out.println("Há a categoria Infantil neste pacote");
            }
            if (categorias.get(i).getCodigo()==3){
                System.out.println("Há a categoria Noticia neste pacote");
            }
            if (categorias.get(i).getCodigo()==4){
                System.out.println("Há a categoria Esporte neste pacote");
            }
        }
        
    }

    public float calcValor(){
        for (int i=0;i<categorias.size();i++){
            preco = preco + categorias.get(i).calcValor();
          
        }
        return preco;
    }
        
    
    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    
    
    
}
