WITH 
   MEMBER [Measures].[Label] AS [DimYear].[Year SK].CURRENTMEMBER.MEMBER_CAPTION 
   MEMBER [Measures].[UniqueName] AS [DimYear].[Year SK].CURRENTMEMBER.UNIQUENAME 
SELECT {[Measures].[Label], 
        [Measures].[UniqueName]
        } ON COLUMNS , 
      [DimYear].[Year SK].ALLMEMBERS ON ROWS 
FROM [US County Business Patterns DW DSV];