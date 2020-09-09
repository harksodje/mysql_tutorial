-- exercise four
-- Queries the name of the clients with `address`, ` payment amount ` and 'payment methods` from the sql_invoicing database.
show databases;
use sql_invoicing;
-- join 2 table and create new one
create table clients_invoices 
	( select sc.client_id as cid , sc.name, sc.address, sc.city, sc.state, sc.phone, 
    si.invoice_id, si.number, si.client_id, si.invoice_total, si.payment_total, si.invoice_date, si.due_date, si.payment_date
    from sql_invoicing.invoices si join sql_invoicing.clients  sc on si.client_id = sc.client_id);
-- join another 2 table and create another one 
create table payment_payment 
	(select * from sql_invoicing.payment_methods sm join sql_invoicing.payments sp on sm.payment_method_id = sp.payment_method);
-- join the newly created tables to ease query as stated in the assignment
create table c_i_p_p 
	(select sip.payment_method_id, sip.name as sip_name,sip.payment_id, sip.client_id as scid , sip.invoice_id as sip_i_id, sip.date, sip.amount, sip.payment_method,
    sci.cid , sci.name, sci.address, sci.city, sci.state, sci.phone, 
    sci.invoice_id, sci.number, sci.client_id, sci.invoice_total, sci.payment_total, sci.invoice_date, sci.due_date, sci.payment_date
    from sql_invoicing.clients_invoices sci join sql_invoicing.payment_payment sip on sci.client_id = sip.client_id);
-- drop the first and second tables to ensure cleanness of database
drop table clients_invoices;
drop table payment_payment;
-- query to select some columns 
select concat(address, "  ", city, " ", state) as Full_address, payment_method, payment_method from c_i_p_p;
-- generally it should be noted that when using join function to create new table, there should be renamed of some similar columns 

-- Another method of join
select siic.address, siii.amount, siii.payment_method from sql_invoicing.clients siic 
	join sql_invoicing.payments siii on siic.client_id = siic.client_id
    join sql_invoicing.payment_methods siip on siip.payment_method_id = siii.payment_method;
    