package com.tvmaster.pessoa;

/**
 *
 * @author joice
 */
 public abstract class Pessoa {
     
    protected int id;
    protected int senha;
    protected String nome;
    protected String cpf;
    protected String telefone;
    protected String email;
    
        public Pessoa (int id, int senha, String nome, String cpf, String telefone, String email){
            this.senha = senha;
            this.cpf = cpf;
            this.email = email;
            this.nome = nome;
            this.telefone = telefone;
            this.id = id;
        }
        
         public void setSenha (int Senha){
                this.senha = Senha;
            }
            
            public int getSenha (){
                return senha;
            } 
            
        public void setId (int id){
                this.id = id;
            }
            
            public int getId (){
                return id;
            } 
            
        public void setNome (String nome){
                this.nome = nome;
            }
            
            public String getNome (){
                return nome;
            }
            
            public void setCpf (String cpf){
                this.cpf = cpf;
            }
            
            public String getCpf(){
                return cpf;
            }
            
            public void setTelefone (String telefone){
                this.telefone = telefone;
            }
            
            public String getTelefone(){
                return telefone;
            }
            
            public void setEmail (String email){
                this.email = email;
            }
            
            public String getEmail(){
                return email;
            }
        
         
    
    @Override
	public String toString() {
		return  this.nome + "" + this.cpf; 
				
	}
}