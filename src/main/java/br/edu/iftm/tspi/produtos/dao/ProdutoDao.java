package br.edu.iftm.tspi.produtos.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import br.edu.iftm.tspi.produtos.domain.Produto;


@Component
public class ProdutoDao {
    @Autowired
    JdbcTemplate db;

    public List<Produto> getProdutos() {
        String sql = "SELECT * FROM produto";
        return db.query(sql, (rs, rowNum) -> new Produto(rs.getString("nomeProduto"), rs.getString("enderecoImagem"),
                rs.getString("linkProduto"), rs.getString("descricaoProduto"), rs.getDouble("precoProduto"),
                rs.getLong("idProduto")));
    }

    public List<Produto> getProdutos(String nomeProduto) {
        String sql = "SELECT * FROM produto WHERE lower(nomeProduto) LIKE ?";
        return db.query(sql, new BeanPropertyRowMapper<Produto>(Produto.class), new Object[] { "%" + nomeProduto + "%" });
    }
    
    public Produto getProduto(Long idProduto) {
        String sql = "SELECT * FROM produto WHERE idProduto=?";
        List<Produto> produtos = db.query(sql, new BeanPropertyRowMapper<Produto>(Produto.class),
                new Object[] { idProduto });
        if (produtos != null && produtos.size() > 0) {
            return produtos.get(0);
        } else {
            return null;
        }
    }

    public void inserirProduto(Produto produto) {
        String sql = "INSERT INTO produto(nomeProduto, enderecoImagem, linkProduto, descricaoProduto, precoProduto) VALUES(?,?,?,?,?)";
        db.update(sql, new Object[] { produto.getNomeProduto(), produto.getEnderecoImagem(), produto.getLinkProduto(),
                produto.getDescricaoProduto(), produto.getPrecoProduto() });
    }

    public void alterarProduto(Produto produto) {
        String sql = "UPDATE produto SET nomeProduto=?, enderecoImagem=?, linkProduto=?, descricaoProduto=?, precoProduto=? WHERE idProduto=?";
        db.update(sql, new Object[] { produto.getNomeProduto(), produto.getEnderecoImagem(), produto.getLinkProduto(),
                produto.getDescricaoProduto(), produto.getPrecoProduto(), produto.getIdProduto() });
    }

    public void removerProduto(Long id) {
        String sql = "DELETE FROM produto WHERE idProduto=?";
        db.update(sql, new Object[] { id });
    }
}
