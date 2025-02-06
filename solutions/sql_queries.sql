1.select  client_id, 
        month(time_id) as month,
        count(distinct(user_id)) as users_num
    from fact_events
    group by client_id,
             month(time_id)

2. SELECT FORMAT(shipment_date, 'yyyy-MM') AS year_month,
count(DISTINCT(CONCAT(shipment_id,sub_id))) as total_shipments
from amazon_shipment
group by FORMAT(shipment_date, 'yyyy-MM') 

3. select top 5 product_id,sum(cost_in_dollars * units_sold) as total_revenue
from online_orders
where date between '2022-01-01' and '2022-06-30'
group by product_id
order by total_revenue desc

4. select city,property_type, AVG(cast(bathrooms as float)) as avg_bathrooms,
avg(cast(bedrooms as float)) as avg_bedrooms
from airbnb_search_details
group by city,property_type

5. select event_name as user_events,count(event_name) from playbook_events
where device = 'macbook pro'
group by event_name
order by user_events desc

6. select top 1 company, continent from forbes_global_2010_2014
order by profits desc

7. select activity_date, pe_description
from los_angeles_restaurant_health_inspections
where facility_name = 'STREET CHURROS' and score < 95

8. select count(*) from worker
where department = 'Admin' and Month(joining_date) >= 4

9. select department,count(*) as no_workers
from worker
where joining_date >= '2014-04-01'
group by department
order by no_workers desc

10. select c.first_name,c.last_name, c.city,o.order_details
from customers as c
left join orders as o on c.id = o.cust_id
order by c.first_name,o.order_details 

11. select c.first_name,o.order_date,o.order_details,o.total_order_cost
from customers as c
join orders as o on c.id = o.cust_id
where c.first_name in ( 'Jill' , 'Eva')
order by o.cust_id 

12. With dept_avg as (
     select department, avg(salary) as avg_salary
     from employee 
     group by department
     )
     select e.first_name,e.department,e.salary,d.avg_salary
     from employee e
     join dept_avg d on d.department = e.department


















