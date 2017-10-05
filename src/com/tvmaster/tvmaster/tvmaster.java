

package com.tvmaster.tvmaster;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Scanner;
import com.tvmaster.client.model.ClientDAO;
import com.tvmaster.centralDeChamada.CentraldeChamada;

/**
 *
 * @author joice
 */
public class tvmaster {
 
    public static void main(String[] args) {
        int opcao = 0;
        Scanner entrada = new Scanner(System.in);
        BufferedReader standardInput = new BufferedReader(new InputStreamReader(System.in));
        
        System.out.println("-----TV MASTER -----");
        System.out.println("Escolha uma opção abaixo:");
        System.out.println("1- Solicitar Assinatura \n 2- Login para assinantes \n 3- Login para Funcionários (1 - Admin e 2- Atendente 3- Técnico) \n 4- Sair");
        opcao = entrada.nextInt();
     
        
        switch (opcao){
            case 1: 
                System.out.println("---- Olá Novo Cliente! ----\n");
                System.out.println("Escolha uma opção abaixo:\n");
                System.out.println("1- Comprar Assinatura \n 2- Sair");
                opcao = entrada.nextInt();
                   
                    switch(opcao){
                        case 1:
                            //comprar assinatura;
                            System.out.println("---- Comprar Assinatura ----\n");
                            
                          break;
                        case 2:
                            System.exit(1);
                            default:System.out.printf("Você digitou uma operação inválida."); 
                                 
                    }
                         
                  
        
            case 2:
                //Login para Assinantes que já possuem a compra;
                 System.out.println("---- Olá, Cliente");
                System.out.println("Escolha uma opção abaixo:\n");
                System.out.println("1- Meus Planos \n 2- Meus Contratos \n 3- Meu Perfil \n 4- Criar Chamado \n 5- Sair");
                opcao = entrada.nextInt();
                    
                    switch(opcao){
                        case 1:
                                System.out.println("---- Meus Planos ----\n");
                                
                            case 2:
                                System.out.println("---- Meus Contratos ----\n");
                               break;
                             case 3:
                                System.out.println("---- Meu Perfil ----\n");
                                
                            case 4:
                                System.out.println("---- Criar Chamado ----\n");
                                
                                System.out.println("Qual o id?");
                                int iD= entrada.nextInt();
                                
                                System.out.println("Qual a Data?");
                                String dt = entrada.nextLine();
                                
                                System.out.println("Qual o motivo?");
                                String mot=entrada.nextLine();
                                
                                System.out.println("Qual a situação?");
                                String sit=entrada.nextLine();
                                
                                CentraldeChamada c=new CentraldeChamada(iD,dt,mot,sit);
                                //adcionar a uma estrutura de dados ou a um bd
                            case 5:
                                System.out.println("---- Sair ----\n");
                                break;
                    
                    }
                   
            case 3:
                // Login para funcionarios onde, 1 = admin, 2 = atendentes e 3 = técnicos
                System.out.println("---- Olá Funcionário----");
                System.out.println("Escolha uma opção abaixo:\n");
                 System.out.println("1- Administrador\n 2- Atendentes e 3- Técnicos");
                opcao = entrada.nextInt();
                switch(opcao){
                    case 1:
                        //Login para Admin
                        System.out.println("---- Olá Administrador! ----\n");
                        System.out.println("Escolha uma opção abaixo:\n");
                        System.out.println("1- Cadastrar funcionario \n 2- Editar Funcionario\n 3- Excluir Funcionario\n 4- Sair");
                        opcao = entrada.nextInt();
                        switch(opcao){
                            case 1:
                                System.out.println("---- Cadastrar Funcionario! ----\n");
                                break;
                            case 2:
                                System.out.println("---- Editar Funcionario! ----\n");
                                break;
                            case 3:
                                System.out.println("---- Excluir Funcionario! ----\n");
                                break;
                            case 4:
                                break; 
                                
                                default:System.out.printf("Você digitou uma operação inválida.");   
                            }
    
        
                    case 2:
                        // Login para Atendentes
                        System.out.println("---- Olá Atendente! ----\n");
                        System.out.println("Escolha uma opção abaixo:\n");
                        System.out.println("1- Atender Chamado \n 2- Consultar Chamado\n 3- Consultar Cliente\n 4- Sair");
                        opcao = entrada.nextInt();
                        switch(opcao){
                            case 1:
                                System.out.println("---- Atender Chamado ----\n");
                                break;
                            case 2:
                                System.out.println("---- Consultar Chamado ----\n");
                                break;
                            case 3:
                                System.out.println("---- Consultar Cliente ----\n");
                                break;
                            case 4:
                                break; 
                                
                                default:System.out.printf("Você digitou uma operação inválida."); 
                        }
                    case 3:
                        // Login para Técnicos
                         System.out.println("---- Olá Técnico! ----\n");
                        System.out.println("Escolha uma opção abaixo:\n");
                        System.out.println("1- Atender Chamado \n 2- Consultar Chamado\n 3- Consultar Cliente\n 4- Sair");
                         opcao = entrada.nextInt();
                        switch(opcao){
                            case 1:
                                System.out.println("---- Atender Chamado ----\n");
                                break;
                            case 2:
                                System.out.println("---- Consultar Chamado ----\n");
                                break;
                            case 3:
                                System.out.println("---- Consultar Cliente ----\n");
                                break;
                            case 4:
                                break; 
                                
                                default:System.out.printf("Você digitou uma operação inválida."); 
                    } 
                }
            case 4:
                //sair
            break;
                default:
                System.out.printf("Você digitou uma operação inválida.");   
        }
          
    
    }
}

