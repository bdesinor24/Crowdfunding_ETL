CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(250) NOT NULL,
    description VARCHAR(250) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(100) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(100) NOT NULL,
    currency VARCHAR(100) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL
);

CREATE TABLE Category (
    category_id VARCHAR(50) NOT NULL,
    category_name VARCHAR(100) NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(50) NOT NULL,
    subcategory_name VARCHAR(100) NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(250) NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (contact_id)
);

ALTER TABLE campaign ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES contacts ("contact_id");

ALTER TABLE campaign ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES category ("category_id");

ALTER TABLE campaign ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES subcategory ("subcategory_id");

SELECT * FROM CAMPAIGN
SELECT * FROM CATEGORY
SELECT * FROM CONTACTS
SELECT * FROM SUBCATEGORY