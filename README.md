Name – Divya Ashish
MBC SQL Assessment Solutions 

1.Create the “XXBCM_ORDER_MGT" table using the script - DB_Prequisite.sql
Answer: - Kindly execute the file “DB_Prequisite.sql” which will create the table “XXBCM_ORDER_MGT”

2.Based on the data provided implement a database schema with necessary tables, columns, data types and constraints. Create your tables in the database with appropriate naming convention. The tables should be appropriately normalized.
Answer: - To create tables in the database, kindly execute the file “DB_Tables.sql” which will create the following tables: -
 2.1. XXBCM_ORDER_MGT_CLR : Copy of table “XXBCM_ORDER_MGT” with all cleaned data
 2.2. XXBCM_SUPPLIER : Table contain all data about supplier 
 2.3. XXBCM_TRANSACTION : Table contain all data about transactions

3.Develop a SQL procedure to trigger a migration process that will extract information from table "XXBCM_ORDER_MGT" and load them in tables that you created with proper data format. You are expected to create a database package with appropriate functions or procedures. All the database objects that you need to create shall be available on your working database environment and properly compiled.
Answer: -

I have created the SQL files, and for completing the migration process we have to execute by following the below mentioned steps: -
a.	Kindly execute the file “DB_Prequisite.sql” which will create the table “XXBCM_ORDER_MGT” and it will insert all the data into the system.
b.	Now we have to execute the file “DB_Tables.sql” which will create the following tables: -
 • XXBCM_ORDER_MGT_CLR : Copy of table “XXBCM_ORDER_MGT” with all cleaned data
 • XXBCM_SUPPLIER : Table contain all data about supplier 
 • XXBCM_TRANSACTION : Table contain all data about transactions
c.	In the next step, kindly compile the package PCG_XXBCM_ORDER from the file PCG_XXBCM_ORDER.sql
d.	Now we have to execute the file “DB_All_Data.sql” which will insert all data in the three-table created which we created before.
e.	Finally execute the file “DB_Views.sql” which will create the views which would help us get the data for the 4th, 5th and 6th questions.
So, with following these steps, the Data migration process is successfully completed.



4.The owner wishes to have a report displaying a summary of Orders with their corresponding list of distinct invoices and their total amount to be able to reconcile his orders and payments. The report shall contain the details as per table below ordered by latest Order Date on top. Implement a Stored Procedure or Function to return the required information.
Answer: - Kindly execute the file “DB_SUMMARY.sql” and this will get us displaying a summary of Orders with their corresponding list of distinct invoices and their total amount to be able to reconcile his orders and payments.

5. Return details for the THIRD (3rd) highest Order Total Amount from the list.
Answer: - Kindly execute the file “DB_THIRD_HIGHEST.sql” and this will Return details for the THIRD (3rd) highest Order Total Amount from the list.

6. List all suppliers with their respective number of orders and total amount ordered from them between the period of 01 January 2017 and 31 August 2017.
Answer: - Kindly execute the file “DB_SUPPLIER_LIST.sql” and this will list all suppliers with their respective number of orders and total amount ordered from them between the period of 01 January 2017 and 31 August 2017.

