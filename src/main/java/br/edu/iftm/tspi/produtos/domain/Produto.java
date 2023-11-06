package br.edu.iftm.tspi.produtos.domain;

import lombok.Data;

@Data
public class Produto {
    private String nomeProduto, enderecoImagem, linkProduto, descricaoProduto;
    private double precoProduto;
    private Long idProduto;

    public Produto() {
    }

    public Produto(String nomeProduto, String enderecoImagem, String linkProduto, String descricaoProduto,
            double precoProduto, Long idProduto) {
        this.nomeProduto = nomeProduto;
        this.enderecoImagem = enderecoImagem;
        this.linkProduto = linkProduto;
        this.descricaoProduto = descricaoProduto;
        this.precoProduto = precoProduto;
        this.idProduto = idProduto;
    }

    
    
}
