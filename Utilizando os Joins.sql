-- Utilize o Left Join para fazer Join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2

select * from temp_tables.tabela_1
select * from temp_tables.tabela_2




select
	t1.cpf,
	t1.name,
	t2.state
from temp_tables.tabela_1 as t1 
left join temp_tables.tabela_2 as t2
	 on t1.cpf = t2.cpf


--------------------------------------------------------------

select
	cus.professional_status,
	count(fun.paid_date) as pagamentos
from sales.funnel as fun
left join sales.customers as cus
	on fun.customer_id = cus.customer_id
group by cus.professional_status
order by pagamentos desc

-------------------------------------------------------------

-- Quantas visitas cada empresa fez no site

select 
	sto.store_name,
	sto.store_cnpj,
	count(fun.visit_page_date) as visitas
from sales.funnel as fun
left join sales.stores as sto
	on fun.store_id = sto.store_id
group by sto.store_name, sto.store_cnpj
order by visitas desc



select 
	sto.store_name,
	sto.store_cnpj,
	fun.visit_page_date
from sales.funnel as fun
left join sales.stores as sto
	on fun.store_id = sto.store_id
where sto.store_cnpj = '69947176155500'


