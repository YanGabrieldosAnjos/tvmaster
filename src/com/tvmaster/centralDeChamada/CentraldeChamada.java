/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tvmaster.centralDeChamada;

/**
 *
 * @author YAN
 */
public class CentraldeChamada {
    private String data;
    private String motivo;
    private String situacao;

    public CentraldeChamada(String data, String motivo, String situacao) {
        this.data = data;
        this.motivo = motivo;
        this.situacao = situacao;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }
    
}
