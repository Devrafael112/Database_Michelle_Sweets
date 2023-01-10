-- views
-- peidos pagos em pix

create view pedidos_pix as 
select 	
	p.idpedidos,
    p.valor_total, 
    c.nome_cliente,
    fp.nome
	
from pedidos p 

join clientes c
on c.idclientes= p.clientes_idclientes
join forma_pagamento fp on fp.pedidos_idpedidos = p.idpedidos
where fp.nome= 'pix' ;

select * from pedidos_pix;

-- view pedidos pagos com dinheiro
create view pedidos_dinheiro as 
select 	
	p.idpedidos "id pedidos",
    p.valor_total "valor total", 
    c.nome_cliente "nome",
    fp.nome "forma pagamento"
	
from pedidos p 

join clientes c
on c.idclientes= p.clientes_idclientes
join forma_pagamento fp on fp.pedidos_idpedidos = p.idpedidos
where fp.nome= 'dinheiro' 
order by p.idpedidos;

select * from pedidos_dinheiro;

-- pedidos feitos com cartão de crédito

create view pedidos_cartaoCredito as 
select 	
	p.idpedidos "id pedidos",
    p.valor_total "valor total", 
    c.nome_cliente "nome",
    fp.nome "forma pagamento"
	
from pedidos p 

join clientes c
on c.idclientes= p.clientes_idclientes
join forma_pagamento fp on fp.pedidos_idpedidos = p.idpedidos
where fp.nome= 'cartão crédito' 
order by p.idpedidos;

select * from pedidos_cartaoCredito;


-- view pedidos_cartaoDebito

create view pedidos_cartaoDebito as 
select 	
	p.idpedidos "id pedidos",
    p.valor_total "valor total", 
    c.nome_cliente "nome",
    fp.nome "forma pagamento"
	
from pedidos p 

join clientes c
on c.idclientes= p.clientes_idclientes
join forma_pagamento fp on fp.pedidos_idpedidos = p.idpedidos
where fp.nome= 'cartão débito' 
order by p.idpedidos;

select * from pedidos_cartaoDebito;


-- view quantidade de pedidos por tipo de pagamento 

create view pedidos_fp as 
select 	
    fp.nome "forma  de pagamento",
	count(p.idpedidos) "quantidade",
     concat('R$ ', round(sum(p.valor_total), 2))  "valor_todos_pedidos"
 
   from pedidos p 

join forma_pagamento fp on fp.pedidos_idpedidos = p.idpedidos
group by fp.nome;

select * from pedidos_fp;

-- view clientes que mais compram em pix 


create view clientes_pix as 
select 	
     c.nome_cliente,
    fp.nome "forma  de pagamento",
	count(p.idpedidos) "quantidade"

   from pedidos p 

join forma_pagamento fp on fp.pedidos_idpedidos = p.idpedidos
join clientes c on c.idclientes=p.clientes_idclientes
where fp.nome= 'pix'
group by c.idclientes 
order by 3 desc;

select * from clientes_pix;


-- pedidos ninho
create view pedidos_ninho as 
select 	
	p.idpedidos,
    p.valor_total, 
    c.nome_cliente,
    c.telefone_cliente,
    ip.sabor_massa,
    ip.recheio,
    ip.arte,
    ip.observacao,
    ip.adicionais
    

from pedidos p 
join itens_pedido ip
on ip.pedidos_idpedidos= p.idpedidos
join clientes c
on c.idclientes= p.clientes_idclientes

where ip.sabor_massa= 'ninho' and ip.recheio='ninho';

select * from  pedidos_ninho;

-- view pedido com recheio de morango e degrade

create view  arte_recheio_degrade_morango as
select
ip.recheio,
ip.arte,
p.idpedidos,
c.nome_cliente

from pedidos p

join itens_pedido ip
on ip.pedidos_idpedidos = p.idpedidos
join clientes c
on c.idclientes = p.clientes_idclientes

where ip.recheio = 'morango' and ip.arte = 'degradê';
 select * from arte_recheio_degrade_morango; 
 
 -- view quantiddae de pedidos acima de um

create view qtd_pedidos_acima_de_1 
as
select * from pedidos p

join itens_pedido ip
on ip.pedidos_idpedidos = p.idpedidos
join clientes c
on c.idclientes = p.clientes_idclientes

where p.qtd_produto > 1;
select * from qtd_pedidos_acima_de_1 ; 

-- view clientes com pedidos concluidos


create view clientesComPedidosConcluidos as
select 	c.idclientes as "id do cliente",
		a.pedidos_idpedidos as "id do pedido", 
        c.nome_cliente as "nome do cliente",
		a.descricao_andamento as "descrição",  
        p.valor_total as "valor total"
from andamento a
inner join pedidos p on p.idpedidos = a.pedidos_idpedidos
inner join clientes c on c.idclientes = p.clientes_idclientes
where a.descricao_andamento = "concluido e entregue"
order by c.idclientes;

select * from clientesComPedidosConcluidos; 

-- view clientes com pedidos no mes de dezembro

create view clientesComPedidosNoMesDezembro as
select 	c.idclientes as "id do cliente",
		c.nome_cliente as "nome do cliente",
        p.data_pedido as "data do pedido"
from pedidos p
inner join clientes c on c.idclientes = p.clientes_idclientes
where month(data_pedido) = 12 
order by c.idclientes asc; 

select * from clientesComPedidosNoMesDezembro;

-- view pedidos do dia

create view pedidos_dia as 
select * from pedidos p
join itens_pedido ip
on ip.pedidos_idpedidos = p.idpedidos

where p.data_pedido = curdate();

select * from pedidos_dia;

-- view pedidos com valor acima de R$ 200

create view pedidos_acima_200 		as 
	select 	cl.nome_cliente 		as	"Nome do cliente",
			pe.data_pedido 			as	"Data do pedido",
			po.nome_produto			as	"Nome do produto",
			po.componentes			as "Componentes do produto",
            an.descricao_andamento	as "Status do pedido",
            pe.valor_total			as "Total do pedido",
            fp.nome					as "Forma de pagaemnto"
	from
		itens_pedido ip
	join pedidos pe  	 	on pe.idpedidos = ip.pedidos_idpedidos
    join produtos po 	 	on po.idprodutos = ip.produtos_idprodutos
    join clientes cl	 	on cl.idclientes =  pe.clientes_idclientes
    join andamento an 	 	on an.pedidos_idpedidos = pe.idpedidos
	join forma_pagamento fp on fp.pedidos_idpedidos = pe.idpedidos	 
    where 
		pe.valor_total >= 200;

select * from pedidos_acima_200;


-- view produtos vendidos com tamanho gg 
create view produtosgg		as
	select 
		cl.nome_cliente		as "Nome do cliente",
        po.nome_produto		as "Nome do produto",
        pe.data_pedido		as "Data do pedido",
        pe.qtd_produto		as "Quantidade",
        pe.valor_total		as "Valor do pedido",
        fp.nome				as "Forma de pagamento"
	from 
		itens_pedido ip
	join produtos po 			on po.idprodutos = ip.produtos_idprodutos
    join pedidos pe  			on pe.idpedidos = ip.pedidos_idpedidos
	join clientes cl 			on cl.idclientes =  pe.clientes_idclientes
    join forma_pagamento fp 	on fp.pedidos_idpedidos = pe.idpedidos
    
	where po.nome_produto like '%gg%';
    
    select * from produtosgg;

-- quantidade de bolos vendidos 
create view bolo_vendido as
	select 
		pr.nome_produto	as "Produto",
        count(*)		as "Quantidade vendida"
    from itens_pedido ip 
	join produtos pr on pr.idprodutos = ip.produtos_idprodutos
    where pr.nome_produto like'bolo%'
    group by pr.nome_produto;
    
select * from bolo_vendido;
    
    
    -- view pedidos com entrega data atual
create view  pedidos_entrega_dia as
select * from pedidos p
join itens_pedido ip
on ip.pedidos_idpedidos = p.idpedidos

where p.data_para_entrega = curdate();

select * from pedidos_entrega_dia;

-- pedidos que foram cancelados
create view pedidos_cancelados as 
select 
	p.idpedidos "pedido",
    c.nome_cliente "cliente",
    c.telefone_cliente ,
    p.valor_total "valor",
    prod.nome_produto, 
    an.descricao_andamento
    
from pedidos p 
join itens_pedido ip on ip.pedidos_idpedidos= p.idpedidos
join andamento an on an.pedidos_idpedidos= p.idpedidos
join clientes c on c.idclientes=p.clientes_idclientes
join produtos prod on prod.idprodutos= ip.produtos_idprodutos
where an.descricao_andamento= 'Cancelado';

select * from pedidos_cancelados;

-- view pedidos por andamento
create view pedidos_qtd_por_andamento as 
select
  
	an.descricao_andamento,
	count(p.idpedidos) "pedido",
    sum(p.valor_total) "valor"
    
 
    
from pedidos p 
join andamento an on an.pedidos_idpedidos= p.idpedidos
group by an.descricao_andamento ;

select * from pedidos_qtd_por_andamento ;


-- view pedidos com observações

create view pedidos_obs		as
	select
		cl.nome_cliente		as "Nome do cliente",
        pr.nome_produto		as "Nome do produto",
        pe.data_pedido		as "Data do pedido",
        ip.observacao		as "Observação do cliente"
	from itens_pedido ip 
    join produtos pr 	on pr.idprodutos = ip.produtos_idprodutos
    join pedidos pe  	on pe.idpedidos = ip.pedidos_idpedidos
	join clientes cl 	on cl.idclientes =  pe.clientes_idclientes
    
    where ip.observacao is not null;


select * from pedidos_obs;

-- view pedidos atrasados
create view pedidos_atrasados as
select 
	p.idpedidos "pedido", 
    c.nome_cliente,
    c.telefone_cliente,
	concat( ( p.data_pedido-p.data_para_entrega), " ", "dias" )"dias em defict",
    p.valor_total "valor",
    ip.sabor_massa,
    ip.recheio, 
    ip.arte,
    ip.adicionais,
    ip.observacao,
    ip.imagem_ref
    
from pedidos p 
join itens_pedido ip on ip.pedidos_idpedidos= p.idpedidos
join andamento an on an.pedidos_idpedidos= p.idpedidos
join clientes c on c.idclientes=p.clientes_idclientes
join produtos prod on prod.idprodutos= ip.produtos_idprodutos
where an.descricao_andamento= 'confirmado' or an.descricao_andamento= 'andamento';

select  * from pedidos_atrasados;


-- triggers

delimiter $



create trigger tgr_valorTotalPedido_insert before insert
on pedidos
for each row
begin
declare valorProd decimal(7,2);
select valor into valorProd from produtos
where idprodutos = new.produtos_idprodutos;
update pedidos set valor_Total = valor_Total + (valorProd * new.pedidos_qtd_Produto)
where idpedidos = new.pedidos_idpedidos;

end$

delimiter ;

-- procedures
-- qtd de dias pra concluir o pedido
delimiter $
create procedure qtd_dias_pedido (in idped int)

begin 
select 
  idpedidos, 
  concat(datediff(data_para_entrega,data_pedido), " ", "dias") 
from 
  pedidos
where 
    idpedidos=idped;

end$

delimiter ;
drop procedure qtd_dias_pedido;

call qtd_dias_pedido(2);

-- se houve atraso na entrega

delimiter $
create procedure atraso_entregas (in idped int)

begin 
select 
  idpedidos, 
  concat(datediff(p.data_para_entrega,ip.data_entrega), " ", "dias") 
from 
  pedidos p 
  join itens_pedido ip 
  on ip.pedidos_idpedidos= p.idpedidos
where 
    idpedidos=idped;

end$

delimiter ;
 
 
 call atraso_entregas(2);

-- valor medio das compra por periodo de tempo 

delimiter $
create procedure media_valor_total (in data_inicial date, in data_final date)
begin 
select 
  avg(p.valor_total) "média"
from pedidos p 
join itens_pedido ip 
on ip.pedidos_idpedidos= p.idpedidos
where ip.data_entrega between data_inicial and data_final;

end$



delimiter ;

drop  procedure media_valor_total;
call media_valor_total ('2022-10-01', '2022-12-31');

-- vendas por data 

delimiter $
create procedure vendaspordata(in dataInicial datetime, in dataFinal datetime)
	begin
		select 
          p.data_pedido "Data", 
		  prod.nome_produto "Produto", 
		  ip.pedidos_qtd_produto "Quantidade", 
		  concat('R$ ', round(prod.valor, 2)) "Valor do Produto", 
          concat('R$ ', p.valor_total) "Valor Total"
		
				from pedidos p
					join itens_pedido ip on ip.pedidos_idpedidos=p.idpedidos
                    join produtos prod on prod.idprodutos= ip.produtos_idprodutos
					
						where p.data_pedido between datainicial and datafinal;
							
    end $
delimiter ;

drop procedure vendaspordata;

call vendaspordata('2022-06-30', '2022-12-31');

-- clientes que mais compram 

delimiter $

create procedure clientes_compras (out qtd_compras int)
begin 

select 
p.clientes_idclientes, 
c.nome_cliente,
count(p.clientes_idclientes) "quantidade_compras"
from pedidos p
join clientes c on c.idclientes= p.clientes_idclientes

group by p.clientes_idclientes
order by count(p.clientes_idclientes) desc;


end$


delimiter ;
drop procedure clientes_compras;
call clientes_compras (@qtd_compras);



-- os produtos que mais saem 

delimiter $
create procedure prod_mais_saem (out id_prod int)
begin 
select prod.nome_produto,count(ip.produtos_idprodutos)"quantidade_produtos"
from  itens_pedido ip
join produtos prod on prod.idprodutos= ip.produtos_idprodutos
group by ip.produtos_idprodutos
order by count(produtos_idprodutos) desc;

end$


delimiter ;

call prod_mais_saem (@id_prod);

-- functions 

delimiter $
create function calcmedia_valortotal(valor decimal(7,2))
	returns decimal(7,2)
    DETERMINISTIC
    begin
		declare media_valorT decimal(7,2);
        select avg(valor_total)  into media_valorT from pedidos ;
    return media_valorT;
    end$
delimiter ;

drop function calcmedia_valortotal;
select * from pedidos
where valor_total>=calcmedia_valortotal(valor_total);


-- function media de pedidos por clientes 

delimiter $
create function calc_pedidos (valor decimal (7,2))
returns decimal (7,2)
deterministic 
begin 
declare media_pedido decimal (7,2);
declare cliente int;
select 
	avg(idpedidos) into media_pedido from  pedidos;
    
return 
	media_pedido;
end$

delimiter ;

select * from pedidos
where idpedidos>= calc_pedidos (idpedidos);

-- drop function calc_pedidos;

-- function pedidos do dia

delimiter //
create function pedidos_do_dia(id_produto int)
	returns int
    DETERMINISTIC
    begin
		declare id_ped int;
        select count(distinct(idpedidos)) into id_ped from pedidos where data_pedido= curdate();
        
        return id_ped;
	
    end //
delimiter ;

-- drop function pedidos_do_dia;

select  pedidos_do_dia(idpedidos) from pedidos;

-- consulta simples sobre 
select 
	A.descricao_andamento,
    P.idpedidos,
    P.data_pedido
from andamento A
join pedidos P on P.idpedidos = A.pedidos_idpedidos