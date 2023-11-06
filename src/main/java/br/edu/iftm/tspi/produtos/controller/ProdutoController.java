package br.edu.iftm.tspi.produtos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.edu.iftm.tspi.produtos.dao.ProdutoDao;
import br.edu.iftm.tspi.produtos.domain.Produto;

@Controller
public class ProdutoController {
    
    @Autowired
    private ProdutoDao dao;


    @RequestMapping("")
    public String index() {
        return "redirect:/cadastrarProduto";
    }

    @RequestMapping("cadastrarProduto")
    public String getProdutos(Model model) {
        model.addAttribute("produto", new Produto());
        model.addAttribute("produtos", dao.getProdutos());
        return "cadastroProdutos";
    }

    @RequestMapping("listaProdutos")
    public String getProduto(Model model) {
        model.addAttribute("produto", new Produto());
        model.addAttribute("produtos", dao.getProdutos());
        return "listagemProdutos";
    }
    
    @PostMapping("cadastrarProduto")
    public String inserirProdutos(Produto produto, Model model) {
        Produto produtoDb = dao.getProduto(produto.getIdProduto());
        if (produtoDb != null) {
            dao.alterarProduto(produto);
        } else {
            dao.inserirProduto(produto);
        }
        return "redirect:/listaProdutos";
    }

    @RequestMapping("parametroProduto")
    public String getContatos(@RequestParam(value = "nomeProduto", required = true) String nomeProduto, Model model) {
        model.addAttribute("produtos", dao.getProdutos(nomeProduto));
        model.addAttribute("produto", new Produto());
        model.addAttribute("edit", false);
        return "listagemProdutos";
    }

    @RequestMapping("editarProduto")
    public String editarProduto(@RequestParam(value = "idProduto", required = true) Long idProduto, Model model) {
        Produto produto = dao.getProduto(idProduto);
        model.addAttribute("produto", produto);
        model.addAttribute("produtos", dao.getProdutos());
        model.addAttribute("edit", true);
        return "cadastroProdutos";
    }

    @RequestMapping("removerProduto")
    public String removerProduto(@RequestParam(value = "idProduto", required = true) Long idProduto, Model model) {
        dao.removerProduto(idProduto);
        return "redirect:/listaProdutos";
    }

}
