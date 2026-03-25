USE [TelecomChurn]
GO

/****** Object:  View [dbo].[vw_EngagementEffectiveness]    Script Date: 3/26/2026 12:55:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_EngagementEffectiveness] AS
SELECT 
    e.CampaignResponse,
    COUNT(*) AS TotalCustomers,
    SUM(CAST(c.Churned AS INT)) AS ChurnedCustomers,
    CAST(SUM(CAST(c.Churned AS INT)) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS ChurnRate
FROM Engagement e
JOIN Churn c ON e.CustomerID = c.CustomerID
GROUP BY e.CampaignResponse;
GO


