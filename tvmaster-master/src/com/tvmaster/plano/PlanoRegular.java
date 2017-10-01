/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tvmaster.plano;

/**
 *
 * @author Bianca
 */
public class PlanoRegular extends Plano{
    
     @Override
     public float calcValor(){
        for (int i=0;i<categorias.size();i++){
             preco = preco + categorias.get(i).calcValor();
        }
        preco= preco - (preco*20/100);
        return preco;
    }
        
    
}
