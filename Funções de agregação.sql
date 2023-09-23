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
order by state

---------------------------------------------------------------

select
	state,
	count(*)
from sales.customers
-- where count(*) > 100
group by state
having count(*) > 100
	and state <> 'MG'
	
---------------------------------------------------------------

-- Conte quantos clientes da tabela sales.customers tem menos de 30 anos

select
	count(*) as "-30"
from sales.customers
where ((current_date - birth_date) / 365) < 30

--------------------------------------------------------------

--Informe a idade do cliente mais velho e mais novo da tabela sales.customers


select
	max((current_date - birth_date) / 365) as mais_velho,
	min((current_date - birth_date) / 365) as mais_novo
from sales.customers


----------------------------------------------------------------

-- Selecione todas as informações do cliente mais rico da tabela sales.customers
-- (possívelmente a resposta contém mais de um cliente)


select
	*
from sales.customers

select
	*
from sales.customers
where income = (select max(income) from sales.customers)


----------------------------------------------------------------

--Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- Ordene o resultado pelo nome da marca

select
	brand,
	count(*)
from sales.products
group by brand
order by brand


-------------------------------------------------------------------

--Conte quantos veículos existem registrados na tabela sales.products
-- por marca e ano do modelo. Ordene pela nome da marca e pelo ano do veículo

select
	brand,
	model_year,
	count(*) as "n° de veiculos"
from sales.products
group by brand, model_year
order by brand, model_year


-------------------------------------------------------------------

--Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- e mostre apenas as marcas que contém mais de 10 veículos registrados

select
	brand,
	count(*) as "n° de veiculos"
from sales.products
group by brand
having count(*) > 10



