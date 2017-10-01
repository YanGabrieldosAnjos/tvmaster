/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tvmaster.client.model;


/**
 *
 * @author joice
 */
import com.tvmaster.client.Cliente;
import com.tvmaster.tvmaster.DataAccessObject;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClientDAO extends DataAccessObject 
{
    private String table = "clients";
    
    private ArrayList<Cliente> toList(ResultSet resultset) throws SQLException
    {
        ArrayList<Cliente> list = new ArrayList<>();
        
        while(resultset.next()) 
        {
            Cliente item = new Cliente();
            
            item.setId(resultset.getInt("id"));
            item.setId(resultset.getInt("Senha"));
            item.setNome(resultset.getString("nome"));
            item.setEmail(resultset.getString("email"));
            item.setCpf(resultset.getString("cpf"));
            item.setTelefone(resultset.getString("telefone"));
          
           
            list.add(item);
        }
        
        resultset.close();
        
        return list;
    }

    public void create(Cliente item)  throws SQLException
    {
        try (PreparedStatement stmt = this.query("INSERT INTO " + this.table + " (id, email, nome, cpf, telefone) VALUES (?,?,?,?,?)")) 
        {
            stmt.setString(1, item.getEmail());
            stmt.setString(2, item.getNome());
            stmt.setString(3, item.getCpf());
            stmt.setString(4, item.getTelefone());
            stmt.setInt(5, item.getSenha());
            stmt.execute();
            stmt.close();
        } 
    }

    public ArrayList<Cliente> read() throws SQLException 
    {
        ArrayList<Cliente> list;
        
        try (PreparedStatement stmt = this.query("SELECT * FROM " + this.table)) 
        {
            ResultSet rs = stmt.executeQuery();
            list = (ArrayList<Cliente>) this.toList(rs);
        }
        
        return list;
    }

    public void update(Cliente item) throws SQLException 
    {
        try(PreparedStatement stmt = this.query("UPDATE " + this.table + " SET email=?, nome=?, cpf=?, telefone=? WHERE id=?")) 
        {
            stmt.setInt(1, item.getId());
            stmt.setString(2, item.getEmail());
            stmt.setString(3, item.getNome());
            stmt.setString(4, item.getCpf());
            stmt.setString(5, item.getTelefone());
            stmt.execute();
            stmt.close();
        }
    }

    public void delete(Cliente item) throws SQLException 
    {
        try(PreparedStatement stmt = this.query("DELETE FROM " + this.table + " WHERE id=?")) 
        {
            stmt.setInt(1, item.getId());
            stmt.execute();
            stmt.close();
        }
    }
    
    private ArrayList<Cliente> find(String query) throws SQLException 
    {
        ArrayList<Cliente> list;
        
        try(PreparedStatement stmt = this.query(query))
        {
            ResultSet rs = stmt.executeQuery();
            list = this.toList(rs);
            stmt.close();
        }
        
        return list;
    }
    
    public Cliente findById(Integer id) throws SQLException 
    {
        ArrayList<Cliente> result = this.find("SELECT * FROM " + this.table + " WHERE id = " + id + " LIMIT 1");
        
        return (result.size() > 0) ? result.get(0) : null;
    }
    
    public Cliente findByEmail(String email) throws SQLException 
    {
        ArrayList<Cliente> result = this.find("SELECT * FROM " + this.table + " WHERE email = '" + email + "' LIMIT 1");
        
        return (result.size() > 0) ? result.get(0) : null;
    }
    
    public int BuscarChamado(int client_id) throws SQLException
    {
        int numero = 0;
        
        try(PreparedStatement stmt = this.query("SELECT chamado FROM " + this.table + " WHERE id =? LIMIT 1"))
        {
            stmt.setInt(1, client_id);
            
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next())
            {
                numero = rs.getInt("chamado");
            }
            
        }
        
        return numero;
    }
    
    public void AtualizarChamado(int client_id, int points) throws SQLException
    {
        try(PreparedStatement stmt = this.query("UPDATE " + this.table + " SET chamado=? WHERE id=?"))
        {
            String motivo = null;
            stmt.setString(1, motivo);
            stmt.setInt(2, client_id);
            
            stmt.execute();
            stmt.close();
        }
    }
    
    public void AddChamado(int client_id, String data) throws SQLException
    {
       String p = this.BuscarChamado(client_id) + data;
        this.AtualizarChamado(client_id,p);
    }
   
    public void RemoverChamado(int client_id, String data) throws SQLException
    {
        int p = this.BuscarChamado(client_id);
        this.AtualizarChamado(client_id, p);
    }

    
   
    
}
