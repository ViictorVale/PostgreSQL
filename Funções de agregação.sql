-- Calcule o n° de clientes da tabela customers por estado

select 
	state,
	count(*) as qd_clientes
from sales.customers
group by state
order by qd_clientes desc

---------------------------------------------------------------

-- Calcule o n° de clientes por estado e status profissional

select
	*
from sales.customers


select 
	state,
	professional_status,
	count(*) as qd_clientes
from sales.customers
group by state, professional_status
order by qd_clientes desc