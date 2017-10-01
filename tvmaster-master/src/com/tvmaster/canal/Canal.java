package com.tvmaster.canal;

import com.tvmaster.plano.Plano;


/**
 *
 * @author joice
 */
public class Canal {
    private String Nome;
    private int NumeroDoCanal;
    private String Classificacao;
    private String Categoria;
    private float preco;
    
        public Canal (float preco, String Nome, int NumeroDoCanal, String Classificacao, String Categoria){
      
        this.preco = preco;
        this.Categoria = Categoria;
        this.Classificacao = Classificacao;
        this.NumeroDoCanal = NumeroDoCanal;
        this.Nome = Nome;
        }
        
        public void setCategoria (String Categoria){
                this.Categoria = Categoria;
            }
            
            public String getCategoria (){
                return Categoria;
            }
            
            public void setNome (String Nome){
                this.Nome = Nome;
            }
            
            public String getNome (){
                return Nome;
            }
            
            public void setNumeroDoCanal (int NumeroDoCanal){
                this.NumeroDoCanal = NumeroDoCanal;
            }
            
            public int getNumeroDoCanal (){
                return NumeroDoCanal;
            }
            public void setClassificacao (String Classificacao){
                this.Classificacao = Classificacao;
            }
            
            public String getClassificacao (){
                return Classificacao;
            }
            
            public void setPreco (float preco){
                this.preco = preco;
            }
            
            public float getPreco (){
                return preco;
            }
            
    
}
