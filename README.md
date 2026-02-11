# SWIGGY-Orders-Customers-And-Restaurant-Performance-Analysis-using-SQL
MySQL-based analysis of Swiggy’s transactional data to uncover insights on customer behavior, restaurant performance, city-level demand, and delivery efficiency.



[A] Project Overview
This project analyzes Swiggy’s transactional SQL database to generate actionable business insights related to:

Customer behavior

Restaurant performance

City-level demand patterns

Delivery partner efficiency

Using MySQL advanced queries (JOINs, aggregations, subqueries, date functions), the project answers 13 industry-aligned business problem statements and transforms raw operational data into strategic KPIs.

[B] Business Challenge
Food delivery platforms operate in a highly competitive ecosystem where success depends on balancing:

Customer engagement

Restaurant partnerships

Delivery efficiency

The objective is to optimize marketplace performance while maintaining service quality and profitability using historical transactional data.

[C] Project Objectives
Segment active vs. inactive customers

Rank restaurants by revenue and average ratings

Compare demand across Delhi and Mumbai

Evaluate delivery partner productivity

Identify repeat customer behavior and loyalty trends

[E] Key Business Metrics
Active Customers: Customers with ≥1 order

Total Revenue: SUM(order_amount)

Average Rating: AVG(rating)

Order Volume: COUNT(order_id)

Repeat Customers: COUNT(DISTINCT order_date)

[F] Dataset Architecture
The database consists of 11 interconnected tables, including:

Customers

Restaurants

Orders

Delivery Partners

Menu Items

Payments

Feedback

Complaints

Order Items

The schema uses primary and foreign keys to establish relationships across the Swiggy ecosystem.

[G] Tools & SQL Techniques
Database: MySQL

Techniques Applied:

INNER JOIN & LEFT JOIN

GROUP BY & HAVING

Subqueries

COUNT(DISTINCT)

Date functions

Aggregation (SUM, AVG, COUNT)

[H] Key Insights
  1. Customer Behavior
      77% customers are active (≥1 order)

        23% customers placed zero orders (churn risk opportunity)

  2. City-Level Demand
     Delhi: 7.67 average orders per customer

     Mumbai: 6.25 average orders per customer

  3. Restaurant Performance
     ₹43K total platform revenue analyzed

     Top 5 restaurants contribute ₹21K (49%) of revenue

     Average rating: 4.35 across platform

  4. Delivery Efficiency
     33 total delivery partners

     37% complete multiple deliveries

     Average load: 3.34 deliveries per partner

[I] Business Impact
Identified revenue concentration patterns

Detected churn opportunities (inactive 23%)

Highlighted rating-revenue correlation

Evaluated operational load distribution among delivery partners

[J] Limitations
Snapshot-based historical data

No real-time tracking

No delivery time or distance data

Limited demographic attributes

[K] Future Enhancements
RFM customer segmentation

Delivery time & SLA analysis

Dashboard creation (Power BI / Tableau)

Predictive churn modeling using ML

[L] Strategic Recommendations
Target inactive customers with onboarding campaigns

Promote high-rating, high-revenue restaurants

Expand restaurant onboarding in high-demand cities

Optimize delivery partner workload distribution

[M] Conclusion
This project demonstrates how structured SQL analysis transforms Swiggy’s operational data into meaningful business intelligence. The findings support strategic decision-making, operational optimization, and customer retention strategies — making this analysis highly relevant for real-world Data Analyst roles.

Performance video = [ https://drive.google.com/drive/folders/1r_PBSR6PQEsFH-PleBVcYqVA4e_4czie ]
