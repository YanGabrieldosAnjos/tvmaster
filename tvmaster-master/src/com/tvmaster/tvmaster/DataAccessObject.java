/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tvmaster.tvmaster;

/**
 *
 * @author joice
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public abstract class DataAccessObject 
{
    protected Connection connection;
    
    public DataAccessObject() 
    {
        this.connection = this.getConnection();
    }
    
    public Connection getConnection()
    {
        try 
        {
            return DriverManager.getConnection("jdbc:mysql://localhost/tvmaster", "root", "root");
        } 
        catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
    
    public PreparedStatement query(String query) throws SQLException 
    {
        return this.connection.prepareStatement(query);
    }
    
}
