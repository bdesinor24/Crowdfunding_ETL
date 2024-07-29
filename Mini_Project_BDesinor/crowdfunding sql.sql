--CREATE TABLE category (
--	category_id VARCHAR PRIMARY KEY,
--	category VARCHAR
--) 

--CREATE TABLE subcategory (
--	subcategory_id VARCHAR PRIMARY KEY,
--	subcategory VARCHAR
--)

--CREATE TABLE contacts(
--	contact_id int PRIMARY KEY,
--	first_name varchar,
--	last_name varchar,
--	email varchar
--)

CREATE TABLE campaigns(
	ct_id int,
	contact_id int,
	company_name varchar,
	description varchar,
	goal decimal,
	pledged decimal,
	outcome varchar,
	backer_count int,
	country varchar(2),
	currency varchar(3),
	launch_date date,
	end_date date,
	category_id varchar foreign key,
	subcategory_id varchar foreign key,
)