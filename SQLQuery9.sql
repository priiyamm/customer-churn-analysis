-- Step 1: Switch database
USE DB;
GO   -- Ends this batch, crucial!

-- Step 2: Create the view
-- First View: vw_ChurnData
CREATE VIEW vw_ChurnData AS
SELECT * 
FROM prod_Churn 
WHERE Customer_Status IN ('Churned', 'Stayed');
GO

-- Second View: vw_JoinData
CREATE VIEW vw_JoinData AS
SELECT * 
FROM prod_Churn 
WHERE Customer_Status = 'Joined';
GO



