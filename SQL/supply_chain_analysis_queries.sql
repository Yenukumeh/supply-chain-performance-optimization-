CREATE DATABASE supply_chain_db;
USE supply_chain_db;

CREATE TABLE supply_chain_table (
    Product_type VARCHAR(50),
    SKU VARCHAR(50) PRIMARY KEY,
    Price DECIMAL(10, 2),
    Availability INT,
    Number_of_products_sold INT,
    Revenue_generated DECIMAL(15, 2),
    Customer_demographics VARCHAR(50),
    Stock_levels INT,
    Lead_times INT,
    Order_quantities INT,
    Shipping_times INT,
    Shipping_carriers VARCHAR(50),
    Shipping_costs DECIMAL(10, 2),
    Supplier_name VARCHAR(50),
    Location VARCHAR(50),
    Lead_time INT,
    Production_volumes INT,
    Manufacturing_lead_time INT,
    Manufacturing_costs DECIMAL(10, 2),
    Inspection_results VARCHAR(50),
    Defect_rates DECIMAL(5, 2),
    Transportation_modes VARCHAR(50),
    Routes VARCHAR(50),
    Costs DECIMAL(10, 2)
);

SELECT * FROM supply_chain_table;

-- QUERY 1: TOP 10 PRODUCTS BY REVENUE
select SKU, Product_type, Revenue_generated, Stock_levels
FROM supply_chain_table
ORDER BY Revenue_generated DESC
LIMIT 10;

-- Query 2: High revenue products with low stock (under 20 units)--
SELECT SKU, Product_type, Revenue_generated, Stock_levels, Lead_times
FROM supply_chain_table
WHERE Stock_levels < 20
ORDER BY Revenue_generated DESC;

-- Query 3: Total revenue and average lead time by product type --
SELECT Product_type, 
       SUM(Revenue_generated) AS Total_Revenue, 
       AVG(Lead_times) AS Avg_Lead_Time
FROM supply_chain_table
GROUP BY Product_type;

-- Query 4: Carrier performance based on shipping time and cost--
SELECT Shipping_carriers, 
       AVG(Shipping_times) AS Avg_Shipping_Time, 
       AVG(Costs) AS Avg_Cost
FROM supply_chain_table
GROUP BY Shipping_carriers
ORDER BY Avg_Shipping_Time ASC;

-- Query 5: Total and average cost by transportation route--
SELECT Routes, 
       SUM(Costs) AS Total_Transportation_Cost, 
       AVG(Costs) AS Avg_Route_Cost
FROM supply_chain_table
GROUP BY Routes
ORDER BY Total_Transportation_Cost DESC;
