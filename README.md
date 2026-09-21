# SQL_Sales_Analysis

SQL Sales analysis includes Data querying , aggregation , GROUP BY, ORDER BY, JOINS , Subqueries , CASE statement , Top customer analysis, Average order value calculations.

## Data set used
SQL assignment using a SQL_Sales_Dataset with **200 orders**.

## Tools used
- MySQL
- MySQL Workbench

## Applied SQL Queries
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- SUM
- AVG
- COUNT
- JOIN
- Subqueries
- CASE statements

### Top Customers
Customers are grouped by name, total spending is calculated with `SUM(total_price)`, and results are sorted to identify the top customers.

### Average Order Value
The overall average order value is calculated with `AVG(total_price)`.

## Dataset
Columns:
`order_id`, `customer_name`, `order_date`, `category`, `sub_category`, `product_name`, `quantity`, `unit_price`, `total_price`, `region`

## Dataset Summary
- Total orders: **200**
- Total sales: **2,420,107.00**
- Average order value: **12,100.53**

## Files
- `sales_analysis.sql` — SQL queries
- `orders.csv` — dataset

## How to Run
1. Import `orders.csv` into the `orders` table in MySQL Workbench.
2. Open `sales_analysis.sql`.
3. Run the queries section by section.
4. Review the results in MySQL Workbench.

## Note
The JOIN query assumes the `customers` table and `customer_id` relationship were created during the assignment.
