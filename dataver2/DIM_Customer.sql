/****** Cleansed Customer Table  ******/
SELECT 
  [CustomerKey], 
  [FirstName] AS [First Name], 
  [LastName] AS [Last Name], 
  [FirstName] + ' ' + [LastName] AS [Full Name],	-- Combined First and Last name
  CASE WHEN [Gender] = 'M' THEN 'Male' WHEN [Gender] = 'F' THEN 'Female' END AS Gender, 
	[DateFirstPurchase], 
  g.city AS [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey -- Joined DimGeography table using PK and FK
ORDER BY 
  CustomerKey ASC
