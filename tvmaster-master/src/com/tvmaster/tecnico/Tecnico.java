package com.tvmaster.tecnico;

import com.tvmaster.funcionario.Funcionario;

/**
 *
 * @author joice
 */
public class Tecnico extends Funcionario {

    public Tecnico(int id,int senha, String funcao, String nome, String email, String cpf, String telefone) {
        super(id, senha, funcao, nome, email, cpf, telefone);
    }
    
}
