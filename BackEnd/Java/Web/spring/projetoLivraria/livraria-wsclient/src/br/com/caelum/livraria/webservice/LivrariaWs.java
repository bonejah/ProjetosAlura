/**
 * LivrariaWs.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.com.caelum.livraria.webservice;

public interface LivrariaWs extends java.rmi.Remote {
    public br.com.caelum.livraria.webservice.Livro[] geTLivrosPeloNome(java.lang.String titulo) throws java.rmi.RemoteException;
}
