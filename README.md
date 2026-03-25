# Telecom Customer Churn Analysis

## Project Overview
This project analyzes customer churn in the telecom sector to identify key drivers behind customer loss and provide actionable insights to help the company reduce the churn rate and retain its clients.

## Project Steps
1. **Data Modeling (SQL Server)**  
   Created a database named **TelecomChurn** covering all possible factors influencing churn:
   - `Customers`, `UsageData`, `Finance`, `Complaints`, `Engagement`, and `Churn`.

2. **Data Preparation & Transformation (SSMS)**  
   Developed several **SQL Views** to clean and aggregate the data for analysis:
   - `vw_AllCustomers`
   - `vw_ActiveCustomers`
   - `vw_AtRiskCustomers`
   - `vw_ChurnRateTrend`
   - `vw_ChurnByComplaint`
   - `vw_CustomerRiskStatus`

   These views were connected to **Power BI** using **DirectQuery** to optimize performance and ensure real‑time updates.

3. **Visualization & Insights (Power BI)**  
   Designed a comprehensive interactive dashboard showing key performance indicators:

   - **Churn Rate**: Overall 27.2%.  
   - **Postpaid vs Prepaid**: Churn rate ~40% for Postpaid vs 15% for Prepaid.  
   - **Regional Trends**: South and West regions record the highest churn — likely related to weaker coverage or network issues.  
   - **Complaint Analysis**: *Billing* complaints are most strongly linked to churn.  
   - **Campaign Effectiveness**: Customers who did **not respond to marketing campaigns** have a churn rate 25% higher than others, revealing opportunities to improve targeted engagement.

## Tools & Technologies
- **SQL Server 2019 + SSMS** for data modeling & transformation  
- **Power BI** for dashboard design & analysis  
- **DirectQuery Connection** for optimized performance  

## Key Takeaways
- Improving **billing experience** and **customer communication** could significantly reduce churn.
- **Proactive engagement** of Postpaid and high‑complaint customers is critical.
- Insights support **data‑driven retention strategies** for customer success.


## Folder Structure
- PowerBI/: Power BI dashboard file (.pbix)
- SQL/: SQL Server scripts & views used for analysis
- README.md: Project documentation
- docs/: Dashboard file (.pdf)

**Malaz Elfadil**  
*Data and Business Intelligence Analyst*  
 **Email:** [malaz.elfadill@gmail.com]
 **LinkedIn:** [(https://www.linkedin.com/in/malazelfadil/)]
