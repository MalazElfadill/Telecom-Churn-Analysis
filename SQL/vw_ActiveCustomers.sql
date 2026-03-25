USE [TelecomChurn]
GO

/****** Object:  View [dbo].[vw_ActiveCustomers]    Script Date: 3/26/2026 12:50:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ActiveCustomers] AS
(
SELECT c.CustomerID, c.PlanType, c.Region, f.AverageMonthlySpend
FROM Customers c
JOIN Finance f ON c.CustomerID = f.CustomerID
JOIN Complaints comp ON c.CustomerID = comp.CustomerID
JOIN Churn ch ON c.CustomerID = ch.CustomerID
WHERE ch.Churned = 0
  AND f.RechargeCountLast30Days > 0
  AND comp.ComplaintCount < 3);
GO


