WITH 
   MEMBER [Measures].[Label] AS [DimCounty].[State Name].CURRENTMEMBER.MEMBER_CAPTION 
   MEMBER [Measures].[UniqueName] AS [DimCounty].[State Name].CURRENTMEMBER.UNIQUENAME 
SELECT {[Measures].[Label], 
        [Measures].[UniqueName]
        } ON COLUMNS , 
      [DimCounty].[State Name].ALLMEMBERS ON ROWS 
FROM [US County Business Patterns DW DSV]