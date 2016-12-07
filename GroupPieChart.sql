SELECT TOP 30 SUM(f.[TotalEstablishments]) AS TotalEstblishments, y.YearSK as Year, c.statename as State  
FROM [dbo].[FactCountyBusinessPattern] F,
dimyear y,
dimcounty c
WHERE Y.YEARSK=2011
AND f.countysk = c.countysk
and f.yearsk = y.yearsk
GROUP BY y.yearsk, c.statename
ORDER BY SUM(f.[TotalEstablishments]) desc, C.StateName 