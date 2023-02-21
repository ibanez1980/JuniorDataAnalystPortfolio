-- Cleansed FactInternetSales Table --
SELECT
	[ProductKey],
	[OrderDateKey],
	[DueDateKey],
	[ShipDateKey],
	[CustomerKey],
	[SalesOrderNumber],
	[SalesAmount]
FROM
	FactInternetSales
WHERE
	LEFT(OrderDateKey, 4) BETWEEN 2019 AND 2021
ORDER BY
	OrderDateKey ASC;

