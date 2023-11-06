CREATE DATABASE dbProdutos;

USE dbProdutos;

CREATE TABLE produto (
    idProduto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR(255) NOT NULL,
    enderecoImagem VARCHAR(2047),
    linkProduto VARCHAR(2047),
    descricaoProduto TEXT,
    precoProduto DECIMAL(10, 2)
);


INSERT INTO produto (nomeProduto, enderecoImagem, linkProduto, descricaoProduto, precoProduto)
VALUES
    ('Azzaro Pour Homme, Eau De Toilette, Perfume Masculino, 100 ml', 'https://m.media-amazon.com/images/I/61gl9rnDL4L._AC_SL1500_.jpg', 'https://www.amazon.com.br/Azzaro-Pour-Homme-Edt-100Ml/dp/B09532P5P4/ref=sr_1_9?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=GFKPFJVWJLRQ&keywords=perfume&qid=1699236613&sprefix=perfu%2Caps%2C233&sr=8-9&ufe=app_do%3Aamzn1.fos.6a09f7ec-d911-4889-ad70-de8dd83c8a74', '
Azzaro pour Homme Eau De Toilette é um concentrado de sedução genuinamente masculina que traduz a sedução latina. Um dos maiores clássicos da perfumaria masculina, Azzaro Pour Homme é um perfume aromático foulgére que reúne 334 ingredientes para compor sua fragrância. Ambientes mais formais, como o seu escritório ou um jantar elegante acompanhado de um delicioso whisky on the rocks solicitam a presença dessa fragrância clássica. Independente de ser dia ou noite, mostre sua classe e seu estilo com este clássico perfume masculino de Azzaro.
', 247.00),
    ('Calvin Klein Ck Be Eau de Toilette', 'https://m.media-amazon.com/images/I/71nzZuoghKL._AC_SL1500_.jpg', 'https://www.amazon.com.br/Perfume-Unissex-Calvin-Klein-50ml/dp/B0001YOGL4/ref=pd_ci_mcx_mh_mcx_views_0?pd_rd_w=c8LBb&content-id=amzn1.sym.2a995f80-8ee9-43c4-9447-71b1a5582207%3Aamzn1.symc.40e6a10e-cbc4-4fa5-81e3-4435ff64d03b&pf_rd_p=2a995f80-8ee9-43c4-9447-71b1a5582207&pf_rd_r=32Y6BDXEBZTN654Z6JRN&pd_rd_wg=2coWO&pd_rd_r=eb3e7a58-502f-4006-9075-a7e756dbf6b3&pd_rd_i=B0001YOGL4', 'Calvin Klein CK BE é tão original quanto a pessoa que o usa, isso porque CK BE tem a ver com liberdade de ser você mesmo. Essa fragrância única de musk é clean e refrescante, com uma simples mistura de ervas, com notas cítricas e florais. ', 145.70),
    ('Perfume Feminino Eau de Toilette Monpetit Petunia, 100ml', 'https://m.media-amazon.com/images/I/51rNANg85sL._AC_SL1000_.jpg', 'https://www.amazon.com.br/Perfume-Feminino-Toilette-Monpetit-Petunia/dp/B0BGYNRJCT/ref=sr_1_12?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=GFKPFJVWJLRQ&keywords=perfume&qid=1699236679&sprefix=perfu%2Caps%2C233&sr=8-12', 'Petunia Monpetit Eau de Toilette. Petunia traz uma releitura das fragrâncias mais procuradas mundialmente. Com embalagem feminina, elegante e fina. Perfumes modernos, para todos os estilos de Mulheres que não abrem mão estarem sempre na moda e perfumadas.', 44.92),
    ('La Vie Est Belle Lancôme - Perfume Feminino - Eau de Parfum', 'https://m.media-amazon.com/images/I/51MMKyxggrL._AC_SL1000_.jpg', 'https://www.amazon.com.br/Perfume-Belle-30ml-Feminino-Lancome/dp/B008SBKTZ4/ref=pd_ci_mcx_mh_mcx_views_0?pd_rd_w=lS1fi&content-id=amzn1.sym.2a995f80-8ee9-43c4-9447-71b1a5582207%3Aamzn1.symc.40e6a10e-cbc4-4fa5-81e3-4435ff64d03b&pf_rd_p=2a995f80-8ee9-43c4-9447-71b1a5582207&pf_rd_r=JQT788V1VVJCGN63M7K2&pd_rd_wg=3OGLk&pd_rd_r=58a7bc5e-1d94-4d38-804c-e5bac8fe57c0&pd_rd_i=B008SBKTZ4', '
La vie est belle refill 100ml A FRAGRÂNCIA DA FELICIDADE Torne a sua vida bela com La Vie Est Belle, a icônica fragrância feminina da Lancôme. Um buquê floral gourmand encapsulado em um sorriso de cristal. Uma declaração universal de felicidade e feminilidade vibrante. Misturando os ingredientes mais nobres, La Vie Est Belle é uma fragrância completamente inebriante.
', 246.05),
    ('Perfume Adidas UEFA Best Of The Best Eau de Toilette Masculino 50ml', 'https://m.media-amazon.com/images/I/71I+AeEtbOL._AC_SL1500_.jpg', 'https://www.amazon.com.br/Perfume-Adidas-UEFA-Toilette-Masculino/dp/B0BNNR3ZMT/ref=sr_1_15?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=GFKPFJVWJLRQ&keywords=perfume&qid=1699236817&sprefix=perfu%2Caps%2C233&sr=8-15', 'A Eau de Toilette Best of the Best da UEFA tem um aroma fresco e refrescante que ajuda você a ter o melhor desempenho. A fragrância é composta por óleos essenciais naturais de gengibre e hortelã e conta com a tecnologia "All Day Fresh", para frescor ao longo do dia. Essa tecnologia inovadora capta as notas de topo da fragrância e as libera durante o dia através da humidade e da transpiração, proporcionando uma refrescância permanente.', 53.54);

