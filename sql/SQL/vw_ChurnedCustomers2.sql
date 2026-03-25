USE [TelecomChurn]
GO

/****** Object:  View [dbo].[vw_ChurnedCustomers2]    Script Date: 3/26/2026 12:54:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ChurnedCustomers2] AS
SELECT c.CustomerID, c.PlanType, c.Region,comp.ComplaintCount, f.AverageMonthlySpend, f.RechargeCountLast30Days,ch.Churned
FROM Customers c
JOIN Finance f ON c.CustomerID = f.CustomerID
JOIN Churn ch ON c.CustomerID = ch.CustomerID
JOIN Complaints comp ON c.CustomerID = comp.CustomerID
WHERE ch.Churned = 1;
GO


