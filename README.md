
# SQL Function Practice Assignments 🐘

This repository contains a series of SQL practice assignments focusing on different types of SQL functions and their real-world applications. Each SQL script is designed to demonstrate how specific functions work using practical, hands-on examples.

---

## 📚 Topics Covered

### ✅ Aggregate Functions
- Count, Sum, Avg, Min, Max
- Grouping and summarizing data

### 🔤 String Functions
- Manipulating and formatting text (e.g., `UPPER`, `LOWER`, `SUBSTRING`, `CONCAT`)

### 🕒 Date & Time Functions
- Extracting and formatting date/time values (e.g., `NOW()`, `EXTRACT`, `AGE`)

### 🎯 Conditional Functions
- `CASE` expressions for logic-based outputs

### 🧠 COALESCE Function
- Handling NULL values by returning the first non-null expression
- Used to calculate **Final Price** when discounts are missing

### 🪟 Window Functions
- Ranking, running totals, and partitions (`ROW_NUMBER`, `RANK`, `OVER` clause)

---

## 📁 File Structure

| File Name | Description |
|-----------|-------------|
| `SQL DAY 20.sql` | Aggregate Functions |
| `SQL DAY 21.sql` | String Functions |
| `SQL DAY 22.sql` | Date & Time Functions |
| `SQL DAY 24.sql` | Conditional Functions |
| `SQL DAY 25.sql` | Case Function Assignment |
| `SQL DAY 26.sql` | **COALESCE Function Assignment – Final Price Calculation** |
| `SQL DAY 27.sql` | Window Functions |

---

## 🧪 Sample Use Case: COALESCE Function Assignment

In `SQL DAY 26`, the task focuses on calculating the **Final Price** of products using the `COALESCE()` function. If a product has a discount price, it uses that; otherwise, it defaults to the original price. This mimics a real-world e-commerce pricing scenario where some products may not be eligible for discounts.

```sql
SELECT product_name,
       COALESCE(discount_price, price) AS Final_price
FROM products;
