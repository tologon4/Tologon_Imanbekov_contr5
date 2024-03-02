use contr5_database;

/*1. */
select product as 'Товар', sum(qty) as 'Общее количество поставок' from actions
join products on actions.product_id= products.id
where date(action_date) between '2023-06-01' and '2023-10-01' 
and to_warehouse_id = 5
group by product
order by product;

/*2. */
select product as 'Товар', sum(qty) as 'Общее количество списания' from actions
join products on actions.product_id= products.id
where date(action_date) between '2023-01-01' and '2023-05-01' 
and from_warehouse_id = 1
group by product
order by product;

/*3. */
select category as 'Категория', sum(qty) as 'Общее количество поставок' from actions
join products on actions.product_id= products.id
join categories on products.category_id = categories.id
where date(action_date) between '2023-09-01' and '2024-12-01' 
and to_warehouse_id = 5
group by category
order by category;

/*4.  */
select coalesce(brand, 'Без бренада') as Бренд, sum(qty) as 'Общее количество поставок' from actions
join products on actions.product_id= products.id
left join brands on products.brand_id = brands.id
where date(action_date) between '2023-01-01' and '2023-12-01' 
and to_warehouse_id = 2
group by brand
order by brand;

/*5. */
select product as Товар, sum(
(select sum(qty) from actions
where to_warehouse_id =2 and date(action_date)<'2023-08-13'
group by to_warehouse_id)-
(select sum(qty) from actions
where from_warehouse_id =2 and date(action_date)>'2023-08-13' 
group by from_warehouse_id)) as 'Остаток' from actions
join products on actions.product_id = products.id
where date(action_date) = '2023-09-13' and from_warehouse_id = 2
group by product
order by product;

/*6. */
select product as Товар, sum(qty) as Количество from actions
join products on actions.product_id= products.id
where counterparty_id = 3 
and date(action_date) between '2023-03-1' and '2023-12-01'
group by product
order by product;

/*7.  */
select product as Товар, sum(qty) as Количество from actions
join products on actions.product_id= products.id
where counterparty_id = 2 and to_warehouse_id = 3 
and date(action_date) between '2023-03-1' and '2023-12-01'
group by product
order by product;
 
/*8.  */
select product as Товар, sum(qty) as Количество from actions
join products on actions.product_id= products.id
where counterparty_id = 2 and from_warehouse_id = 5 
and date(action_date) between '2023-02-1' and '2023-12-01'
group by product
order by product;

/*9. */
select counterparty as Kонтрагент, sum(qty) as Количество from actions
join counterparties on actions.counterparty_id=counterparties.id
where date(action_date) between '2023-02-01' and '2024-01-01' 
and product_id = 6 
and from_warehouse_id is null
group by counterparty
order by Количество desc;

/*10. */
select counterparty as Kонтрагент, sum(qty) as Количество from actions
join counterparties on actions.counterparty_id=counterparties.id
where date(action_date) between '2023-02-01' and '2024-01-01' 
and product_id = 2 
and to_warehouse_id is null
group by counterparty
order by Количество desc;

/*11.*/
select product as Товар, sum(qty) as Количество from actions
join products on actions.product_id=products.id
where to_warehouse_id = 3 
and date(action_date) between '2023-01-1' and '2024-5-01' 
and counterparty_id is null
group by product
order by product;

/*12.*/
select product as Товар, sum(qty) as Количество from actions
join products on actions.product_id=products.id
where from_warehouse_id = 1 
and date(action_date) between '2023-09-1' and '2024-5-01'
and counterparty_id is null
group by product
order by product;

 