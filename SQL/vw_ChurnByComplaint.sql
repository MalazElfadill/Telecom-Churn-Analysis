USE [TelecomChurn]
GO

/****** Object:  View [dbo].[vw_ChurnByComplaint]    Script Date: 3/26/2026 12:53:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ChurnByComplaint] AS
SELECT 
    cp.LastComplaintType,
    COUNT(*) AS TotalCustomers,
    SUM(CAST(c.Churned AS INT)) AS ChurnedCustomers,
    CAST(SUM(CAST(c.Churned AS INT)) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS ChurnRate
FROM Complaints cp
JOIN Churn c ON cp.CustomerID = c.CustomerID
GROUP BY cp.LastComplaintType;
GO


