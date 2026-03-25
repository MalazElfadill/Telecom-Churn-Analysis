USE [TelecomChurn]
GO

/****** Object:  View [dbo].[vw_ChurnByTenure]    Script Date: 3/26/2026 12:53:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ChurnByTenure] AS
SELECT 
    CASE 
        WHEN TenureMonths <= 6 THEN '0–6 months'
        WHEN TenureMonths BETWEEN 7 AND 12 THEN '7–12 months'
        WHEN TenureMonths BETWEEN 13 AND 24 THEN '13–24 months'
        ELSE '25+ months'
    END AS TenureGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CAST(c.Churned AS INT)) AS ChurnedCustomers,
    CAST(SUM(CAST(c.Churned AS INT)) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS ChurnRate
FROM Customers cu
JOIN Churn c ON cu.CustomerID = c.CustomerID
GROUP BY 
    CASE 
        WHEN TenureMonths <= 6 THEN '0–6 months'
        WHEN TenureMonths BETWEEN 7 AND 12 THEN '7–12 months'
        WHEN TenureMonths BETWEEN 13 AND 24 THEN '13–24 months'
        ELSE '25+ months'
    END;
GO


