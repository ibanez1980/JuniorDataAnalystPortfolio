--  Cleansed DimDate Table --
SELECT
	[DateKey],
	[FullDateAlternateKey] AS Date,
	[EnglishDayNameOfWeek] AS Day,
	[WeekNumberOfYear] AS Week_No,
	[EnglishMonthName] AS Month,
	LEFT([EnglishMonthName],3) AS Month_Short,
	[MonthNumberOfYear]AS Month_No,
	[CalendarQuarter]AS Quarter,
	[CalendarYear] AS Year
FROM
	[AdventureWorksDW2019].[dbo].[DimDate]
WHERE [CalendarYear] IN (2021,2020,2019);