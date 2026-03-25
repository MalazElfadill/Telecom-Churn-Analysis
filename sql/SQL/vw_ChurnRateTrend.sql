USE [TelecomChurn]
GO

/****** Object:  View [dbo].[vw_ChurnRateTrend]    Script Date: 3/26/2026 12:54:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ChurnRateTrend] AS
SELECT 
    FORMAT(cu.SignupDate, 'yyyy-MM') AS Month,
    COUNT(*) AS TotalCustomers,
    SUM(CAST (c.Churned as INT)) AS ChurnedCustomers,
    CAST(SUM(CAST(c.Churned AS INT)) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS ChurnRatePercent
FROM Customers cu
JOIN Churn c ON cu.CustomerID = c.CustomerID
GROUP BY FORMAT(cu.SignupDate, 'yyyy-MM');
GO


