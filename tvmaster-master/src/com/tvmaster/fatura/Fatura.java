/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tvmaster.fatura;
import com.tvmaster.client.Cliente;
import com.tvmaster.contrato.Contrato;
import com.tvmaster.plano.Plano;
/**
 *
 * @author YAN
 */
public class Fatura {
       private Cliente clienteID;
       private Contrato nContrato;
       private Plano p;
       
               
    public Fatura(Cliente clienteID, Contrato nContrato, Plano p) {
        this.clienteID = clienteID;
        this.nContrato = nContrato;
        this.p = p;
        
    }

    public Cliente getClienteID() {
        return clienteID;
    }

    public void setClienteID(Cliente clienteID) {
        this.clienteID = clienteID;
    }

    public Contrato getnContrato() {
        return nContrato;
    }

    public void setnContrato(Contrato nContrato) {
        this.nContrato = nContrato;
    }

    public Plano getP() {
        return p;
    }

    public void setP(Plano p) {
        this.p = p;
    }
    
    
       
       
}
