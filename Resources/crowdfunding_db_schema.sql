-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Category (
    Category_ID VARCHAR   NOT NULL,
    Category VARCHAR   NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        Category_ID
     )
);

CREATE TABLE Subcategory (
    Subcategory_ID VARCHAR   NOT NULL,
    Subcategory VARCHAR   NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        Subcategory_ID
     )
);

CREATE TABLE Contacts (
    Contact_ID INT   NOT NULL,
    First_Name VARCHAR   NOT NULL,
    Last_Name VARCHAR   NOT NULL,
    Email VARCHAR   NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        Contact_ID
     )
);

CREATE TABLE Campaign (
    CF_ID INT   NOT NULL,
    Contact_ID INT   NOT NULL,
    Company_Name VARCHAR   NOT NULL,
    Description VARCHAR   NOT NULL,
    Goal FLOAT   NOT NULL,
    Pledged FLOAT   NOT NULL,
    Outcome VARCHAR   NOT NULL,
    Backers_Count INT   NOT NULL,
    Country VARCHAR   NOT NULL,
    Currency VARCHAR   NOT NULL,
    Launch_Date DATETIME   NOT NULL,
    End_Date DATETIME   NOT NULL,
    Category_ID VARCHAR   NOT NULL,
    Subcategory_ID VARCHAR   NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (
        CF_ID
     )
);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_Contact_ID FOREIGN KEY(Contact_ID)
REFERENCES Contacts (Contact_ID);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_Category_ID FOREIGN KEY(Category_ID)
REFERENCES Category (Category_ID);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_Subcategory_ID FOREIGN KEY(Subcategory_ID)
REFERENCES Subcategory (Subcategory_ID);
