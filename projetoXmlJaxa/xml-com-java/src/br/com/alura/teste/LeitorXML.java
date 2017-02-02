package br.com.alura.teste;

import java.util.ArrayList;
import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import br.com.alura.model.Produto;

public class LeitorXML extends DefaultHandler {
	private StringBuilder conteudo;
	private List<Produto> produtos = new ArrayList<Produto>();
	private Produto produto;

	@Override
	public void startElement(String uri, String localName, String qName, Attributes atr) {
		System.out.println("abriu a tag:" + qName);

		if (qName.equals("produto")) {
			produto = new Produto();
		}

		conteudo = new StringBuilder();

	}

	@Override
	public void characters(char[] ch, int start, int length) throws SAXException {
		conteudo.append(new String(ch, start, length));
	}

	public List<Produto> getProdutos() {
		return produtos;
	}

	@Override
	public void endElement(String uri, String localName, String qName) throws SAXException {
		if (qName.equals("produto")) {
			produtos.add(produto);
		} else if (qName.equals("nome")) {
			produto.setNome(conteudo.toString());
		} else if (qName.equals("preco")) {
			double preco = Double.parseDouble(conteudo.toString());
			produto.setPreco(preco);
		}
	}
}
