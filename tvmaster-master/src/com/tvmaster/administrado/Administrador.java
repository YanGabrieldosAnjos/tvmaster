/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tvmaster.administrado;

import com.tvmaster.funcionario.Funcionario;

/**
 *
 * @author joice
 */
public class Administrador extends Funcionario{

    public Administrador(int id, int senha, String funcao, String nome, String email, String cpf, String telefone) {
        super(id, senha, funcao, nome, email, cpf, telefone);
    }
    
    
}
