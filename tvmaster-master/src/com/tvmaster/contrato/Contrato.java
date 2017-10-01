/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tvmaster.contrato;
import java.util.Scanner;

/**
 *
 * @author Bianca
 */
public class Contrato {
    private String numeroDeContrato;
    private int quantReceptor;
    private String endereço;
    private int tipoDePlano;
    
    Scanner s = new Scanner(System.in);
    
    public Contrato(String numeroDeContrato, int quantReceptor, String endereço, int tipoDePlano) {
        this.numeroDeContrato = numeroDeContrato;
        this.quantReceptor = quantReceptor;
        this.endereço = endereço;
        this.tipoDePlano = tipoDePlano;
    }
    
    
    public void alteraContrato(){
        System.out.println("O que deseja alterar?");
        System.out.println("1.Numero de contrato");
        System.out.println("2.Quantidade de receptores");
        System.out.println("3.Endereço");
        System.out.println("4.Tipo de plano");
        
        int desejo= s.nextInt();
        
        switch (desejo) {
            case 1:
                String numContrato=s.nextLine();
                this.numeroDeContrato=numContrato;
                break;
            case 2:
                int qtReceptores=s.nextInt();
                this.quantReceptor=qtReceptores;
                break;
            case 3:
                String end=s.nextLine();
               this.endereço=end;
                break;
            case 4:
               int  plano=s.nextInt();
               this.tipoDePlano=plano;
               break;
            default:
                break;
        }
                
       
        
    }

    public String getNumeroDeContrato() {
        return numeroDeContrato;
    }

    public void setNumeroDeContrato(String numeroDeContrato) {
        this.numeroDeContrato = numeroDeContrato;
    }

    public int getQuantReceptor() {
        return quantReceptor;
    }

    public void setQuantReceptor(int quantReceptor) {
        this.quantReceptor = quantReceptor;
    }

    public String getEndereço() {
        return endereço;
    }

    public void setEndereço(String endereço) {
        this.endereço = endereço;
    }

    public int getTipoDePlano() {
        return tipoDePlano;
    }

    public void setTipoDePlano(int tipoDePlano) {
        this.tipoDePlano = tipoDePlano;
    }
    
     
}