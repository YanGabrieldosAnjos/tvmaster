/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tvmaster.atendente;

import com.tvmaster.funcionario.Funcionario;

/**
 *
 * @author joice
 */
public class Atendente extends Funcionario {

    public Atendente(int id,int senha, String funcao, String nome, String email, String cpf, String telefone) {
        super(id,senha, funcao, nome, email, cpf, telefone);
    }
    
}
