-- Cleansed DimCustomers Table --
SELECT
	[CustomerKey],
	[FirstName],
	[LastName],
	[FirstName] + ' ' + [LastName] AS FullName,
	CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	[DateFirstPurchase],
	[DimGeography].City AS [Customer City]
FROM
	[DimCustomer]
LEFT JOIN
	[DimGeography] ON [DimCustomer].GeographyKey = [DimGeography].GeographyKey
ORDER BY
[CustomerKey] ASC;