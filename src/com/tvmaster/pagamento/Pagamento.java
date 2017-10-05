/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tvmaster.pagamento;
import com.tvmaster.fatura.Fatura;
import java.util.ArrayList;
/**
 *
 * @author YAN
 */
public class Pagamento {
    ArrayList <Fatura> listadepagamento = new ArrayList<>();
    
    
   private void insenrenalista(Fatura f){
       listadepagamento.add(f);

   }
    
}
