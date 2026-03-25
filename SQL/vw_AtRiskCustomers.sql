USE [TelecomChurn]
GO

/****** Object:  View [dbo].[vw_AtRiskCustomers]    Script Date: 3/26/2026 12:52:30 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_AtRiskCustomers] AS (
SELECT  c.CustomerID, c.PlanType, c.Region,f.RechargeCountLast30Days,comp.ComplaintCount, f.AverageMonthlySpend,
    ch.Churned
FROM Customers c
JOIN Finance f ON c.CustomerID = f.CustomerID
JOIN Complaints comp ON c.CustomerID = comp.CustomerID
JOIN Churn ch ON c.CustomerID = ch.CustomerID
WHERE ch.Churned = 0
  AND (f.RechargeCountLast30Days = 0 OR comp.ComplaintCount >= 3))
GO


