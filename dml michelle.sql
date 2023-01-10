
-- use mydb;
-- drop database mydb;


/*-------------------------------ADICIONAR USUÁRIOS--------------------------------*/
insert into clientes (nome_cliente, telefone_cliente, email)
values 				("Maria das Dores", 81983648264, "mariazinha82@gmail.com"),
					("Mirella Cordeiro Lins Carielli", 99876-2234, "unicorniomickey@gmail.com"),
					("Simone Jaqueline Oliveira", 98735-5712, "monejaque@gmail.com"),
					("Carla de Souza", 81986482638, "carlinhapereira@gmail.com"),
					("Pereira lima", 81984628463, "pereiraolima28@gmail.com"),
					("Bruna Carla", 8193728463, "bruninhacarla28@gmail.com"),
					("Carlos Santos", 81984638473, "carlinhosantos83@gmail.com"),
					("Inácio José", 81983384628, "inacinhodejesus@gmail.com"),
					("Luís Felipe Albino", 99819-2537, "luizinhooleao@gmail.com"),
					("Leonardo Pinto Silva", 98866-2545, "victorleo222@gmail.com");


/*---------------------ALTERAR INFORMAÇÕES DOS USUÁRIOS----------------*/
update clientes set telefone_cliente = 81998762234 where idclientes = 3;
update clientes set telefone_cliente = 81998762234 where idclientes = 2;
update clientes set telefone_cliente = 81987355712 where idclientes = 4;
update clientes set telefone_cliente = 81998192537 where idclientes = 9;
update clientes set telefone_cliente = 81998192537 where idclientes = 10;
update clientes set telefone_cliente = 81998866254 where idclientes = 11;
update clientes set telefone_cliente = 81937284636 where idclientes = 7;






insert into produtos (idprodutos, nome_produto, valor, componentes)
values (01, "bolo ppp/ 1,8 kg", 100.00, "bolo ppp");

insert into produtos (idprodutos, nome_produto, valor, componentes)
values
(02, "bolo pp/ 2,5 kg", 145.00, "bolo pp"),
        (03, "bolo p/ 3,3 kg", 180.00, "bolo p"),
        (04, "bolo m/ 4,2 kg", 210.00, "bolo m"),
        (05, "bolo g/ 5,0 kg", 240.00, "bolo g"),
        (06, "bolo gg/ 6,3 kg", 280.00, "bolo gg");
       
insert into produtos (idprodutos, nome_produto, valor, componentes)
values
(07, "naked cake acetado ppp/ 1,8 kg", 100.00, "naked cake acetado pp"),
        (08, "naked cake acetado pp/ 2,5 kg", 125.00, "naked cake acetado pp"),
        (09, "naked cake acetado p/ 3,3 kg", 150.00, "naked cake acetado p"),
        (10, "naked cake acetado m/ 4,2 kg", 180.00, "naked cake acetado m"),
        (11, "naked cake acetado g/ 5,0 kg", 200.00, "naked cake acetado g"),
        (12, "naked cake acetado gg/ 6,3 kg", 225.00, "naked cake acetado gg");
 
 insert into produtos (nome_produto, valor, componentes)
values
("naked cake  ppp/ 1,8 kg", 95.00, "naked cake pp"),
        ("naked cake  pp/ 2,5 kg", 120.00, "naked cake  pp"),
        ( "naked cake  p/ 3,3 kg", 140.00, "naked cake  p"),
        ( "naked cake  m/ 4,2 kg", 180.00, "naked cake  m"),
        ( "naked cake  g/ 5,0 kg", 200.00, "naked cake  g"),
        ( "naked cake  gg/ 6,3 kg", 225.00, "naked cake gg");
       
insert into produtos (nome_produto, valor, componentes)
values
("chantininho  ppp/ 1,8 kg", 100.00, "chantininho pp"),
        ("chantininho  pp/ 2,5 kg", 145.00, "chantininho pp"),
        ( "chantininho p/ 3,3 kg", 180.00, "chantininho p"),
        ( "chantininho  m/ 4,2 kg", 210.00, "chantininho  m"),
        ( "chantininho  g/ 5,0 kg", 240.00, "chantininho  g"),
        ( "chantininho  gg/ 6,3 kg", 280.00, "chantininho gg");
       
insert into produtos (nome_produto, valor, componentes)
values

        ( "torta  p/ 2,9 kg", 90.00, "torta  p"),
        ( "torta   m/ 3,9 kg", 120.00, "torta   m"),
        ( "torta   g/ 4,9 kg", 140.00, "torta   g"),
        ( "torta   gg/ 6,2 kg", 155.00, "torta  gg");
       
        -- com acrescimos de massa
       

insert into produtos (nome_produto, valor, componentes)
values ("bolo com Acres de massa ppp/ 1,8 kg", 112.00, "bolo com Acres de massa ppp");

insert into produtos (nome_produto, valor, componentes)
values
("bolo  com Acres de massa pp/ 2,5 kg", 162.00, "bolo com Acres de massa pp"),
        ("bolo com Acres de massa p/ 3,3 kg", 192.00, "bolo com Acres de massa p"),
        ( "bolo com Acres de massa m/ 4,2 kg", 222.00, "bolo com Acres de massa m"),
        ( "bolo com Acres de massa g/ 5,0 kg", 252.00, "bolo com Acres de massa g"),
        ( "bolo com Acres de massa  gg/ 6,3 kg", 292.00, "bolo com Acres de massa gg");
       
insert into produtos (nome_produto, valor, componentes)
values
( "naked cake acetado com Acres de massa ppp/ 1,8 kg", 112.00, "naked cake acetado com Acres de massa pp"),
        ( "naked cake acetado com Acres de massa pp/ 2,5 kg", 137.00, "naked cake acetado com Acres de massa  pp"),
        ( "naked cake acetado com Acres de massa p/ 3,3 kg", 162.00, "naked cake acetado  com Acres de massa p"),
        ( "naked cake acetado com Acres de massa m/ 4,2 kg", 192.00, "naked cake acetado com Acres de massa m"),
        ( "naked cake acetado com Acres de massa g/ 5,0 kg", 212.00, "naked cake acetado com Acres de massa g"),
        ( "naked cake acetado com Acres de massa gg/ 6,3 kg", 237.00, "naked cake acetado com Acres de massa gg");
 
 insert into produtos (nome_produto, valor, componentes)
values
("naked cake com Acres de massa ppp/ 1,8 kg", 107.00, "naked cake com Acres de massa pp"),
        ("naked cake com Acres de massa pp/ 2,5 kg", 132.00, "naked cake com Acres de massa pp"),
        ( "naked cake com Acres de massa  p/ 3,3 kg", 152.00, "naked cake com Acres de massa p"),
        ( "naked cake  com Acres de massa m/ 4,2 kg", 192.00, "naked cake com Acres de massa m"),
        ( "naked cake com Acres de massa  g/ 5,0 kg", 212.00, "naked cake com Acres de massa g"),
        ( "naked cake com Acres de massa  gg/ 6,3 kg", 237.00, "naked cake com Acres de massa gg");
       
insert into produtos (nome_produto, valor, componentes)
values
("chantininho com Acres de massa ppp/ 1,8 kg", 112.00, "chantininho com Acres de massa pp"),
        ("chantininho com Acres de massa  pp/ 2,5 kg", 157.00, "chantininho com Acres de massa pp"),
        ( "chantininho com Acres de massa p/ 3,3 kg", 192.00, "chantininho com Acres de massa  p"),
        ( "chantininho com Acres de massa  m/ 4,2 kg", 222.00, "chantininho com Acres de massa  m"),
        ( "chantininho com Acres de massa g/ 5,0 kg", 252.00, "chantininho com Acres de massa  g"),
        ( "chantininho  com Acres de massa gg/ 6,3 kg", 292.00, "chantininho com Acres de massa gg");
       
insert into produtos (nome_produto, valor, componentes)
values

        ( "torta com Acres de massa  p/ 2,9 kg", 102.00, "torta  com Acres de massap"),
        ( "torta  com Acres de massa m/ 3,9 kg", 132.00, "torta com Acres de massa  m"),
        ( "torta  com Acres de massa g/ 4,9 kg", 152.00, "torta   com Acres de massa g"),
        ( "torta  com Acres de massa gg/ 6,2 kg", 167.00, "torta  com Acres de massa gg");
       
        -- com acrescimo de massa e acrescimo de recheio
       
       
               

insert into produtos (nome_produto, valor, componentes)
values ("bolo com Acres de recheio ppp/ 1,8 kg", 110.00, "bolo com Acres de  recheio ppp");

insert into produtos (nome_produto, valor, componentes)
values
("bolo  com Acres de  recheio pp/ 2,5 kg", 160.00, "bolo com Acres de recheio pp"),
        ("bolo com Acres de  recheio p/ 3,3 kg", 190.00, "bolo com Acres de  recheio p"),
        ( "bolo com Acres de recheio m/ 4,2 kg", 220.00, "bolo com Acres de  recheio m"),
        ( "bolo com Acres de  recheio g/ 5,0 kg", 250.00, "bolo com Acres de  recheio g"),
        ( "bolo com Acres de  recheio gg/ 6,3 kg", 190.00, "bolo com Acres de  recheio gg");
       
insert into produtos (nome_produto, valor, componentes)
values
( "naked cake acetado com Acres de massa e recheio ppp/ 1,8 kg", 122.00, "naked cake acetado com Acres de massa e recheio pp"),
        ( "naked cake acetado com Acres de massa e recheio  pp/ 2,5 kg", 147.00, "naked cake acetado com Acres de massa e recheio  pp"),
        ( "naked cake acetado com Acres de massa e recheio  p/ 3,3 kg", 172.00, "naked cake acetado  com Acres de massa e recheio p"),
        ( "naked cake acetado com Acres de massa e recheio m/ 4,2 kg", 202.00, "naked cake acetado com Acres de massa e recheio m"),
        ( "naked cake acetado com Acres de massa e recheio g/ 5,0 kg", 222.00, "naked cake acetado com Acres de massa e recheio g"),
        ( "naked cake acetado com Acres de massa e recheio gg/ 6,3 kg", 247.00, "naked cake acetado com Acres de massa  e recheio gg");
 
 insert into produtos (nome_produto, valor, componentes)
values
("naked cake com Acres de massa  e recheio ppp/ 1,8 kg", 117.00, "naked cake com Acres de massa e recheio pp"),
        ("naked cake com Acres de massa e recheio  pp/ 2,5 kg", 142.00, "naked cake com Acres de massa e recheio pp"),
        ( "naked cake com Acres de massa e recheio  p/ 3,3 kg", 162.00, "naked cake com Acres de massa  e recheio p"),
        ( "naked cake  com Acres de massa e recheio  m/ 4,2 kg", 202.00, "naked cake com Acres de massa e recheio  m"),
        ( "naked cake com Acres de massa  e recheio  g/ 5,0 kg", 222.00, "naked cake com Acres de massa  e recheio g"),
        ( "naked cake com Acres de massa e recheio  gg/ 6,3 kg", 247.00, "naked cake com Acres de massa e recheio gg");
       
insert into produtos (nome_produto, valor, componentes)
values
("chantininho com Acres de massa e recheio ppp/ 1,8 kg", 122.00, "chantininho com Acres de massa e recheio  pp"),
        ("chantininho com Acres de massa e recheio  pp/ 2,5 kg", 167.00, "chantininho com Acres de massa e recheio pp"),
        ( "chantininho com Acres de massa e recheio  p/ 3,3 kg", 202.00, "chantininho com Acres de massa e recheio  p"),
        ( "chantininho com Acres de massa e recheio  m/ 4,2 kg", 232.00, "chantininho com Acres de massa e recheio m"),
        ( "chantininho com Acres de massa e recheio  g/ 5,0 kg", 262.00, "chantininho com Acres de massa e recheio g"),
        ( "chantininho  com Acres de massa e recheio gg/ 6,3 kg", 302.00, "chantininho com Acres de massa e recheio gg");
       
insert into produtos (nome_produto, valor, componentes)
values

        ( "torta com Acres de massa e recheio p/ 2,9 kg", 112.00, "torta  com Acres de massa e recheio p"),
        ( "torta  com Acres de massa e recheio m/ 3,9 kg", 142.00, "torta com Acres de massa e recheio  m"),
        ( "torta  com Acres de massa e recheio g/ 4,9 kg", 162.00, "torta   com Acres de massa e recheio g"),
        ( "torta  com Acres de massa e recheio  gg/ 6,2 kg", 177.00, "torta  com Acres de massa e recheio gg");
       
       
 -- com acrescimo de recheio
 
 
insert into produtos (nome_produto, valor, componentes)
values ("bolo com Acres de massa e recheio ppp/ 1,8 kg", 122.00, "bolo com Acres de massa e recheio ppp");

insert into produtos (nome_produto, valor, componentes)
values
("bolo  com Acres de massa e recheio pp/ 2,5 kg", 172.00, "bolo com Acres de massa e recheio pp"),
        ("bolo com Acres de massa e recheio p/ 3,3 kg", 202.00, "bolo com Acres de massa e recheio p"),
        ( "bolo com Acres de massa e recheio m/ 4,2 kg", 232.00, "bolo com Acres de massa e recheio m"),
        ( "bolo com Acres de massa e recheio g/ 5,0 kg", 262.00, "bolo com Acres de massa e recheio g"),
        ( "bolo com Acres de massa e recheio gg/ 6,3 kg", 302.00, "bolo com Acres de massa e recheio gg");
       
insert into produtos (nome_produto, valor, componentes)
values
( "naked cake acetado com Acres de  recheio ppp/ 1,8 kg", 110.00, "naked cake acetado com Acres de recheio pp"),
        ( "naked cake acetado com Acres de  recheio  pp/ 2,5 kg", 135.00, "naked cake acetado com Acres de recheio  pp"),
        ( "naked cake acetado com Acres de  recheio  p/ 3,3 kg", 165.00, "naked cake acetado  com Acres de  recheio p"),
        ( "naked cake acetado com Acres de  recheio m/ 4,2 kg", 190.00, "naked cake acetado com Acres de  recheio m"),
        ( "naked cake acetado com Acres de  recheio g/ 5,0 kg", 210.00, "naked cake acetado com Acres de  recheio g"),
        ( "naked cake acetado com Acres de  recheio gg/ 6,3 kg", 235.00, "naked cake acetado com Acres de  recheio gg");
 
 insert into produtos (nome_produto, valor, componentes)
values
("naked cake com Acres de  recheio ppp/ 1,8 kg", 105.00, "naked cake com Acres de  recheio pp"),
        ("naked cake com Acres de  recheio  pp/ 2,5 kg", 130.00, "naked cake com Acres de  recheio pp"),
        ( "naked cake com Acres de  recheio  p/ 3,3 kg", 150.00, "naked cake com Acres de  recheio p"),
        ( "naked cake  com Acres de  recheio  m/ 4,2 kg", 190.00, "naked cake com Acres de  recheio  m"),
        ( "naked cake com Acres de  recheio  g/ 5,0 kg", 210.00, "naked cake com Acres de  recheio g"),
        ( "naked cake com Acres de  recheio  gg/ 6,3 kg", 235.00, "naked cake com Acres de  recheio gg");
       
insert into produtos (nome_produto, valor, componentes)
values
("chantininho com Acres de  recheio ppp/ 1,8 kg", 110.00, "chantininho com Acres de massa e recheio  pp"),
        ("chantininho com Acres de  recheio  pp/ 2,5 kg", 155.00, "chantininho com Acres de massa e recheio pp"),
        ( "chantininho com Acres de  recheio  p/ 3,3 kg", 190.00, "chantininho com Acres de massa e recheio  p"),
        ( "chantininho com Acres de  recheio  m/ 4,2 kg", 220.00, "chantininho com Acres de massa e recheio m"),
        ( "chantininho com Acres de  recheio  g/ 5,0 kg", 250.00, "chantininho com Acres de massa e recheio g"),
        ( "chantininho  com Acres de  recheio gg/ 6,3 kg", 290.00, "chantininho com Acres de massa e recheio gg");
       
insert into produtos (nome_produto, valor, componentes)
values

        ( "torta com Acres de  recheio p/ 2,9 kg", 102.00, "torta  com Acres de  recheio p"),
        ( "torta  com Acres de  recheio m/ 3,9 kg", 130.00, "torta com Acres de  recheio  m"),
        ( "torta  com Acres de  recheio g/ 4,9 kg", 150.00, "torta   com Acres de  recheio g"),
        ( "torta  com Acres de  recheio  gg/ 6,2 kg", 165.00, "torta  com Acres de  recheio gg");
                     
/*----------------ATUALIZAR PRODUTO-------------*/
update produtos set valor = 20.00 where idprodutos = 5;



                      
                      
					

			/* ---------------------------ADICIONAR PEDIDOS--------------------------- */
insert into pedidos (idpedidos,clientes_idclientes, valor_total, data_pedido, data_para_entrega, qtd_produto)
values 				( 1,1, 150.00, '2022-12-13', '2022-12-15', 1),
                    (2, 5, 102.00, '2022-01-05', '2022-01-06', 78),
                    ( 3,4, 111.00, '2022-10-14', '2022-10-14', 48),
                    ( 4,8, 116.00, '2022-12-02', '2022-12-03', 15),
                    ( 5,7, 190.00, '2022-11-15', '2022-11-18', 14),
                    ( 6,10, 188.00, '2022-01-01', '2022-01-07', 45),
                    (7, 9, 144.00, '2022-11-04', '2022-11-09', 13),
                    ( 8,1, 100.00, '2022-08-16', '2022-08-17', 7),
                    (9, 6, 220.00, '2022-03-22', '2022-03-23', 55),
                    ( 10,1, 320.00, '2022-09-19', '2022-09-18', 99),
                    ( 11,4, 105.00, '2022-10-21', '2022-10-23', 150),
					(12, 1, 150.00, '2022-12-13', '2022-12-15', 1),
                    (13, 5, 102.00, '2022-01-05', '2022-01-06', 78),
                    ( 14,4, 111.00, '2022-10-14', '2022-10-14', 48),
                    (15, 8, 116.00, '2022-12-02', '2022-12-03', 15),
                    (16, 7, 190.00, '2022-11-15', '2022-11-18', 14),
                    (17, 10, 188.00, '2022-01-01', '2022-01-07', 45),
                    (18, 9, 144.00, '2022-11-04', '2022-11-09', 13),
                    (19, 1, 100.00, '2022-08-16', '2022-08-17', 7),
                    (20, 6, 220.00, '2022-03-22', '2022-03-23', 55),
                    (21, 1, 320.00, '2022-09-19', '2022-09-18', 99),
                    ( 22,4, 105.00, '2022-10-21', '2022-10-23', 150),
                    ( 23,10, 284.00, '2022-12-08', '2022-12-15', 2),
					(24, 7, 294.00, '2022-11-30', '2022-12-03', 1),
					(25, 8, 248.00, '2022-11-28', '2022-12-05', 5),
					(26, 4, 300.00, '2022-11-22', '2022-11-29', 3),
					(27, 3, 260.00, '2022-11-18', '2022-11-24', 7),
					(28, 2, 284.00, '2022-12-08', '2022-12-15', 2),
					(29,7, 294.00, '2022-11-30', '2022-12-03', 9),
					( 30,8, 294.00, '2022-11-10', '2022-11-15', 11),
					(31, 2, 190.00,  '2022-11-09',  '2022-11-19', 15),
					(32, 6, 215.00,  '2022-11-21', '2022-11-26', 13 ),
					( 33,10, 284.00, '2022-12-08', '2022-12-15', 2),
					( 34,7, 294.00, '2022-11-30', '2022-12-03', 1),
					( 35,8, 248.00, '2022-11-28', '2022-12-05', 5),
					(36, 4, 300.00, '2022-11-22', '2022-11-29', 3),
					(37, 3, 260.00, '2022-11-18', '2022-11-24', 7),
					( 38,2, 284.00, '2022-12-08', '2022-12-15', 2),
					(39,7, 294.00, '2022-11-30', '2022-12-03', 9),
					( 40,8, 294.00, '2022-11-10', '2022-11-15', 11),
					(41, 2, 190.00,  '2022-11-09',  '2022-11-19', 15),
					(42, 6, 215.00,  '2022-11-21', '2022-11-26', 13),
                    (43,8, 394.00, '2022-11-11', '2022-12-25', 12),
					(44, 2, 290.00,  '2022-11-19',  '2022-11-29', 10),
					(45,6, 235.00,  '2022-11-11', '2022-11-28', 12 ),
					( 46,10, 294.00, '2022-12-18', '2022-12-25', 2),
					( 47,7, 244.00, '2022-10-30', '2022-11-23', 3),
					(48, 8, 448.00, '2022-11-18', '2022-12-15', 4),
					( 49,4, 330.00, '2022-11-12', '2022-11-30', 2),
					( 50,3, 280.00, '2022-11-15', '2022-11-22', 5),
					( 51,2, 184.00, '2022-12-18', '2022-12-22', 4),
					( 52,7, 294.00, '2022-10-30', '2022-12-13', 8),
					(53,8, 250.00, '2022-11-12', '2022-11-25', 12),
					( 54,2, 128.00,  '2022-12-19',  '2022-12-29', 14),
					( 55,6, 245.00,  '2022-12-05', '2022-12-18', 11);
                    
                    
                    
                    
/*-----------ADICIONAR ANDAMENTO----------*/
insert into andamento ( descricao_andamento, pedidos_idpedidos)
values 				  ( "Confirmado",1),
					  ("Em andamento",2),
                      ("concluido e entregue",3),
					  ("Cancelado",4),
                      ( "Confirmado",5),
					  ("Em andamento",6),
                      ("concluido e entregue",7),
					  ("concluido e entregue",8),
                      ( "Confirmado",9),
					  ("Em andamento",10),
                      ("concluido e entregue",11),
					  ("concluido e entregue",12),
                      ( "Confirmado",13),
					  ("concluido e entregue",14),
                      ("concluido e entregue",15),
					  ("concluido e entregue",18),
                      ( "Confirmado",16),
					  ("Em andamento",17),
                      ("concluido e entregue",19),
					  ("concluido e entregue",20),
                       ("concluido e entregue",21),
                      ("concluido e entregue",22),
					  ("concluido e entregue",23),
                      ( "Confirmado",24),
					  ("Em andamento",25),
                      ("concluido e entregue",26),
					  ("concluido e entregue",27),
					  ("Cancelado",28),
                      ("concluido e entregue",29),
					  ("concluido e entregue",30),
                       ("concluido e entregue",31),
                      ("concluido e entregue",32),
					  ("concluido e entregue",33),
                      ( "Cancelado",34),
					  ("Em andamento",35),
                      ("concluido e entregue",36),
					  ("concluido e entregue",37),
                       ("concluido e entregue",38),
                      ("concluido e entregue",39),
					  ("Cancelado",40),
                      ( "Confirmado",41),
					  ("Em andamento",42),
                      ("concluido e entregue",43),
					  ("concluido e entregue",44),
					  ("Em andamento",45),
                      ("concluido e entregue",46),
					  ("concluido e entregue",47),
                       ("concluido e entregue",48),
                      ("concluido e entregue",49),
					  ("concluido e entregue",50),
                      ( "Confirmado",51),
					  ("Cancelado",52),
                      ("concluido e entregue",53),
					  ("concluido e entregue",54),
                      ("Cancelado",54);
                      
                    
                   



								/*------------------ ADICIONAR INFORMAÇÕES DO PEDIDO*---------------------*/
insert into itens_pedido (pedidos_idpedidos,produtos_idprodutos,sabor_massa,recheio,pedidos_qtd_produto, arte, adicionais,  observacao,  data_entrega)
values 					 (33, 2, "Morango",   "Ninho", 1,"Trufas", "Cream Cheese", null, '2022-12-15'),
						 (2, 4, "Brigadeiro",  "Chocolate",1,"Brigadeiro", "Guloseimas", null ,  '2022-12-15'),
						 (3, 7, "Ovomaltine",  "ninho ",78, "glitter", null,  null ,  '2022-01-06'),
                         (4, 7, "Ninho com Nutella", "chocolate", 12,"baloes", null, null ,  '2022-10-14'),
                         (5, 6, "Red Velvet",   "beijinho", 15,"brilho",  null, null , '2022-12-03'),
                         (6, 5, "Ninho",  "oreo",14, "topo",  null,  null,  '2022-11-18'),
                         (7, 7, "Paçoca", " paçoca", 45, "bolo fake", null,  null ,  '2022-01-07'),
                         (8, 6, "Ninho",  " beijinho", 13, "bolo fake",  null,  null,  '2022-11-09'),
                         (9, 5, "Chocolate",   " ninho", 7,"brilho ",  null,  null,  '2022-08-17'),
                         (10, 7, "Beijinho",  "oreo ",55, "topo ",  null,  null,  '2022-03-23'),
                         (11, 7, "Churros",  "chocolate ",99,  "baloes", null,  null,  '2022-09-18'),
                         (12, 7, "Surpresa de Uva",   "morango ",150, "trufas",  null,  null ,  '2022-10-23'),
                         (13, 3, "Nutella",   "Arco Íris",2, "Trufas", "Balões ", "Escrever Feliz Aniversário" ,  '2022-12-15'),
                         (14, 3, "Oreo",   "Red Velvet", "2","Topo ", null,  null , '2022-12-03'),
                         (15, 5, "Ninho",   "ninho ",5, "bolo fake",  null, null ,  '2022-12-05'),
                         (16, 2, "Doce de Leite",  " Arco Íris", 3, "Fitas",  null,  null ,  '2022-11-29'),
                         (17, 5, "Red Velvet",   "chocolate ",7, "glitter",  null,  null , '2022-11-24'),
                         (18, 3, "Paçoca",  "Red Velvet ", 2, "Trufas", " Cream Cheese", "",  '2022-12-15'),
                         (19, 5, "Chocolate",  " ninho",9,  "brilho",  null,  null ,  '2022-12-03'),
                         (20, 5, "Red Velvet", "oreo ", 11, "baloes",  null,  null ,  '2022-11-15'),
                         (21, 7, "Gotas de Chocolate",   " oreo",15, "bolo fake",  null,  null ,  '2022-11-19'),
                         (22, 7, "Maracujá",  " nutella",13, "led",  null,  null,  '2022-11-26'),
                         (23, 4, "Bem Casado",  "Chocolate ",2, "led",  null, null,  '2022-12-15'),
                         (24, 3, "Oreo",  "Red Velvet ", 1, "led", "Topo", "Escrever Feliz nosso dia" , '2022-12-03'),
                         (25, 5, "Ninho", " morango", 5, "bolo fake", null,  null ,  '2022-12-05'),
                         (26, 2, "Ninho ", " chocolate", 12, "brilho",  null,  null , '2022-10-14'),
                         (27, 1, "Nutella",   "nutella",23, "glitter",  null, null , '2022-10-14'),
                         (28, 4, "Red Velvet",  "ninho ",14, "topo",  null, null ,  '2022-10-14'),
                         (29, 6, "Chocolate",  "ninho ",  15,"topo", null, null ,  '2022-10-14'),
                         (30, 5, "Ninho", "chocolate ",  28, "topo",  null, null , '2022-10-14'),
                         (31, 5, "Red Velvet",  " morango", 38, "glitter",  null,  null,  '2022-10-14'),
                         (32, 7, "Ninho",   "morango ",44, "brilho",  null,  null,  '2022-10-14');
                         
insert into itens_pedido (pedidos_idpedidos,produtos_idprodutos,pedidos_qtd_produto,sabor_massa,recheio, arte, adicionais,  observacao,  data_entrega)
values(1,10,2,"chocolate", "ninho", "topo", null, null,'2022-10-22'); 

insert into itens_pedido (pedidos_idpedidos,produtos_idprodutos,pedidos_qtd_produto,sabor_massa,recheio, arte, adicionais,  observacao,  data_entrega)
values(34,4,2,"chocolate", "brigadeiro", "topo", null, "bolo em formato de coração",'2022-10-20'),
       (35,8,5,"morango", "ninho", "baloes", "recheio morango", null,'2022-11-25'),
       (36,20,6,"red velvet", "ninho", "glitter", null, null,'2022-11-22'),
       (37,80,7,"ninho", "choholate", "brilho", "recheio chocolate", "bolo em formato circular",'2022-12-05'),
       (38,3,3,"chocolate", "ninho", "bolo fake", null, "escrever feliz aniversário",'2022-12-13'),
       (39,10,2,"morango", "oreo", "led", "recheio morango", null,'2022-12-12'),
       (40,12,4,"red velvet", "beijinho", "led", null, null,'2022-11-27'),
       (41,56,6,"ninho", "bem casado", "bolo fake", "recheio oreo", "escrever parabéns",'2022-11-10'),
       (42,9,8,"chocolate", "morango", "topo", null, "bolo em formato de coração",'2022-11-28'),
       (43,88,9,"morango", "ninho", "baloes", "recheio oreo", null,'2022-11-12'),
       (44,23,12,"ninho", "ninho", "trufas", null, null,'2022-11-05'),
       (45,22,13,"ninho", "oreo", "bolo fake", "recheio paçoca", "bolo em formato circular",'2022-11-08'),
	    (46,8,15,"morango", "ninho", "baloes", "recheio morango", null,'2022-11-20'),
       (47,20,22,"red velvet", "ninho", "glitter", null, null,'2022-12-02'),
       (48,5,20,"chocolate", "nutella", "bolo fake", null, "escrever feliz aniversário",'2022-11-24'),
       (49,108,5,"morango", "oreo", "led", "recheio morango", null,'2022-10-29'),
       (50,102,2,"red velvet", "bem casado", "led", null, null,'2022-10-20'),
       (51,92,4,"ninho", "bem casado", "bolo fake", "recheio oreo", "escrever parabéns",'2022-10-10'),
       (52,60,3,"chocolate", "brigadeiro", "glitter", null, "bolo em formato de coração",'2022-11-24'),
       (53,70,2,"morango", "ninho", "topo", "recheio oreo", null,'2022-11-27'),
       (54,25,1,"ninho", "ninho", "baloes", null, null,'2022-10-16'),
       (55,10,5,"red velvet", "oreo", "bolo fake", "recheio paçoca", "bolo em formato circular",'2022-10-15');



                         
/*------REMOVER INFORMAÇÕES DE PEDIDO-------*/                       



delete from itens_pedido where pedidos_idpedidos = 29;
delete from itens_pedido where pedidos_idpedidos= 30;
delete from itens_pedido where pedidos_idpedidos = 31;
delete from itens_pedido where pedidos_idpedidos = 32;



insert into forma_pagamento (nome,pedidos_idpedidos)
values ("dinheiro",1 ),
		("dinheiro",2 ),
		("dinheiro",3 ),
		("dinheiro",4 ),
		("dinheiro",5 ),
		("dinheiro",6 ),
		("dinheiro",7 ),
		("pix",8),
		("cartão débito",9 ),
        ("pix",10 ),
		("pix",11 ),
		("cartão crédito",12 ),
		("pix",13 ),
		("cartão débito",14 ),
		("pix",15 ),
		("cartão débito",16 ),
		("pix",17),
		("cartão débito",18 ),
        ("cartão débito",19 ),
		("pix",20),
		("cartão débito",21 ),
		("cartão débito",22 ),
		("cartão débito",23 ),
		("cartão débito",24 ),
		("pix",25 ),
		("cartão débito",26 ),
		("pix",27),
		("cartão crédito",28 ),
        ("cartão crédito",29 ),
		("cartão crédito",30),
		("cartão crédito",31 ),
        ("cartão débito",32 ),
		("pix",33),
		("cartão débito",34 ),
        ("pix",35),
		("cartão débito",36 ),
        ("cartão crédito",37 ),
		("cartão crédito",38 ),
		("cartão débito",39 ),
		("cartão débito",40 ),
		("pix",41 ),
		("cartão débito",42 ),
		("pix",43),
		("cartão débito",44 ),
        ("cartão débito",45 ),
		("cartão crédito",46),
		("cartão crédito",47 ),
        ("cartão débito",48 ),
        ("cartão crédito",49 ),
		("cartão crédito",50 ),
		("cartão débito",51 ),
		("cartão débito",52 ),
		("pix",53 ),
		("cartão débito",54 ),
		("pix",55);
        











