CREATE SCHEMA IF NOT EXISTS crowdfunding_db_schema;


CREATE TABLE crowdfunding_db_schema.contacts (
    contact_id int not null,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    email varchar(100) not null,
    primary key (contact_id)
);

CREATE TABLE crowdfunding_db_schema.category (
    category_id varchar(20) not null,
    category varchar(20) not null,
	primary key (category_id)
);

CREATE TABLE crowdfunding_db_schema.subcategory (
    subcategory_id varchar(20) not null,
    subcategory varchar(20) not null,
	primary key (subcategory_id)
);

CREATE TABLE crowdfunding_db_schema.campaign (
    cf_id int not null,
    contact_id int not null,
    company_name varchar(200) not null,
    description varchar(200) not null,
    goal real not null,
    pledged real not null,
    outcome varchar(20) not null,
    backers_count int not null,
    country varchar(20) not null,
    currency varchar(20) not null,
    launched_date timestamp not null,
    end_date timestamp not null,
    category_id varchar(20) not null,
    subcategory_id varchar(20) not null,
    primary key (cf_id),
	foreign key (contact_id) references crowdfunding_db_schema.contacts(contact_id),
	foreign key (category_id) references crowdfunding_db_schema.category(category_id),
	foreign key (subcategory_id) references crowdfunding_db_schema.subcategory(subcategory_id)
);
