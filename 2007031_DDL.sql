-- Drop the Reviews table
drop table Reviews;

-- Drop the transaction table
drop table transaction;

-- Drop the orders table
drop table orders;

-- Drop the product table
drop table product;

-- Drop the Categories table
drop table Categories;

-- Drop the users table
drop table users;

-- Create the users table
create table users(
	user_id number(5) check(length(user_id)=5) not null primary key,
	username varchar(50) not null,
    password varchar(20)  not null,
    email varchar(50) unique not null,
    address varchar(50),
    phone varchar(11) check(length(phone)=11) not null);

 -- Create the Categories table     
    create table Categories (
    category_id number(5)  not null primary key,
    category_name varchar2(50) not null
 );

-- Create the product table    

create table  product (
    pro_id number(5) check(length(pro_id)=5)not null primary key,
    pro_name  varchar(50) not null,
    pro_model number not null,
    price number not null,
    category_id number(5)  not null,
    CONSTRAINT fk_product_category
       foreign key (category_id)
        references Categories(category_id)
        on delete cascade
);

	
	
-- Create the orders table
    create table orders(
	order_id number(4) check(length(order_id)=4) not null primary key,
	user_id number(5) check(length(user_id)=5) not null,
	pro_id number(5) check(length(pro_id)=5) not null,
	quantity number not null,
	foreign key(user_id) references users(user_id) on delete cascade,
	foreign key(pro_id) references product(pro_id) on delete cascade);
	
	
-- Create the transaction table	
create table transaction(
	transaction_id number(4) check(length(transaction_id)=4) not null primary key,
	user_id number(5) check(length(user_id)=5) not null,
	order_id number(4) check(length(order_id)=4) not null,
	payment_amount number(20) not null,
	payment_date DATE not null,
	foreign key(user_id) references users(user_id) on delete cascade,
	foreign key(order_id) references orders(order_id) on delete cascade);


-- Create the Reviews table	
	create table  Reviews (
    review_id number(5) NOT NULL PRIMARY KEY,
    user_id number(5) NOT NULL,
    pro_id number(5) NOT NULL,
    rating number(1) NOT NULL,
    comments varchar2(255),
    foreign key(user_id) references users(user_id) on delete cascade,
    foreign key (pro_id) references Product(pro_id) on delete cascade
);



         --add the column name
alter table users add name char(20);

         --modify the column name
alter table users modify name varchar(50);

        --Rename the column name
alter table users rename column name to fullname;

        --Delete the column from table
alter table users drop column fullname;