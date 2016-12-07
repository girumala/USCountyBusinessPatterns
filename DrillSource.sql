WITH 
   MEMBER [Measures].[YearName] AS [DimYear].[Year SK].CURRENTMEMBER.Name 
   MEMBER [Measures].[YearUniqueName] AS [DimYear].[Year SK].CURRENTMEMBER.UNIQUENAME 
   MEMBER [Measures].[StateTwoLetter] AS [DimCounty].[State Name].CURRENTMEMBER.Name 
   MEMBER [Measures].[StateUniqueName] AS [DimCounty].[State Name].CURRENTMEMBER.UNIQUENAME 
   
SELECT NON EMPTY { [Measures].[Total Establishments], [Measures].[Number EST 1 To4], [Measures].[Number EST 10 To19], [Measures].[Number EST 100 To249], [Measures].[Annual Pay Roll],[Measures].[YearName], [Measures].[YearUniqueName],
		[Measures].[StateTwoLetter],[Measures].[StateUniqueName] } ON COLUMNS, NON EMPTY { ([DimCounty].[StateCounty].[County Name].ALLMEMBERS * [DimYear].[Year SK].[Year SK].ALLMEMBERS ) } DIMENSION PROPERTIES MEMBER_CAPTION, MEMBER_UNIQUE_NAME ON ROWS FROM ( SELECT ( STRTOSET(@DimCountyStateName, CONSTRAINED) ) ON COLUMNS FROM ( SELECT ( STRTOSET(@DimYearYearSK, CONSTRAINED) ) ON COLUMNS FROM [US County Business Patterns DW DSV])) WHERE ( IIF( STRTOSET(@DimCountyStateName, CONSTRAINED).Count = 1, STRTOSET(@DimCountyStateName, CONSTRAINED), [DimCounty].[State Name].currentmember ) ) CELL PROPERTIES VALUE, BACK_COLOR, FORE_COLOR, FORMATTED_VALUE, FORMAT_STRING, FONT_NAME, FONT_SIZE, FONT_FLAGS
