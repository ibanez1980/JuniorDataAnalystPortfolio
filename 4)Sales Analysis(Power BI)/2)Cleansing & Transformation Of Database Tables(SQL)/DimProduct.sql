-- Cleansed DimProduct Table --
SELECT
	[ProductKey],
	[ProductAlternateKey]AS ProductItemCode,
	[EnglishProductName] AS [Product Name],
	DimProductCategory.[EnglishProductCategoryName] AS [Product Category],
	DimProductSubcategory.[EnglishProductSubcategoryName] AS [Sub Category],
	[Color] AS [Product Color],
	[Size] AS [Product Size],
	[ProductLine] AS [Product Line],
	[ModelName] AS [Product Model Name],
	[EnglishDescription] AS [Product Description],
	ISNULL (DimProduct.Status, 'Outdated') AS [Product Status]
FROM DimProduct
LEFT JOIN
DimProductSubcategory ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
LEFT JOIN
DimProductCategory ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
ORDER BY
DimProduct.ProductKey;
