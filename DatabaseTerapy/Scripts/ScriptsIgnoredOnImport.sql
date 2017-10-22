
USE [TerapyDB]
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Photo], [Notes]) VALUES (2, N'<Nothing>', N'<Nothing>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Photo], [Notes]) VALUES (3, N'frits', N'George', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x, NULL)
GO

INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Photo], [Notes]) VALUES (4, N'Evange', N'Ale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x, NULL)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[CategoriesTerapy] ON
GO

INSERT [dbo].[CategoriesTerapy] ([CategoryID], [CategoryName]) VALUES (0, N'<Other>a')
GO

INSERT [dbo].[CategoriesTerapy] ([CategoryID], [CategoryName]) VALUES (1, N'Piscina')
GO

INSERT [dbo].[CategoriesTerapy] ([CategoryID], [CategoryName]) VALUES (2, N'Other')
GO

INSERT [dbo].[CategoriesTerapy] ([CategoryID], [CategoryName]) VALUES (3, N'Ginastica')
GO

INSERT [dbo].[CategoriesTerapy] ([CategoryID], [CategoryName]) VALUES (4, N'Preceduri')
GO

INSERT [dbo].[CategoriesTerapy] ([CategoryID], [CategoryName]) VALUES (5, N'piscina')
GO

SET IDENTITY_INSERT [dbo].[CategoriesTerapy] OFF
GO

SET IDENTITY_INSERT [dbo].[TerapyType] ON
GO

INSERT [dbo].[TerapyType] ([TerapyTypeID], [TerapyTypeName], [PersonXSession], [TerapyTypeCategoryID], [ReportOrder]) VALUES (2, N'Masaj', 6, 4, 1)
GO

INSERT [dbo].[TerapyType] ([TerapyTypeID], [TerapyTypeName], [PersonXSession], [TerapyTypeCategoryID], [ReportOrder]) VALUES (3, N'hidromassage', 6, 4, 1)
GO

INSERT [dbo].[TerapyType] ([TerapyTypeID], [TerapyTypeName], [PersonXSession], [TerapyTypeCategoryID], [ReportOrder]) VALUES (4, N'Impacetari', 1, 4, 1)
GO

INSERT [dbo].[TerapyType] ([TerapyTypeID], [TerapyTypeName], [PersonXSession], [TerapyTypeCategoryID], [ReportOrder]) VALUES (5, N'Ergo', 1, 3, 1)
GO

INSERT [dbo].[TerapyType] ([TerapyTypeID], [TerapyTypeName], [PersonXSession], [TerapyTypeCategoryID], [ReportOrder]) VALUES (6, N'Bazin', 1, 3, 1)
GO

SET IDENTITY_INSERT [dbo].[TerapyType] OFF
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (0, N'<Nothing>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (3, N'Carmen ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (4, N'Ionica ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (5, N'Lena ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (6, N'Loredana ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (7, N'Mihaela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (8, N'Rahela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (9, N'Sanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (10, N'Valentina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (11, N'Vera ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (12, N'Andrei L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (13, N'Aristide ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (14, N'Cosmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (15, N'Costel ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (16, N'Daniel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (17, N'Gabi ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (18, N'Ionuț Ch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (19, N'Paul C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerSurname], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email]) VALUES (20, N'Paul D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[TurnTerapy] ON
GO

INSERT [dbo].[TurnTerapy] ([TurnID], [TurnName], [TurnDataStart], [TurnEndDate], [TurnToGenerate]) VALUES (4, N'turno 1', CAST(N'2017-10-15T00:00:00.000' AS DateTime), CAST(N'2017-10-27T00:00:00.000' AS DateTime), 0)
GO

INSERT [dbo].[TurnTerapy] ([TurnID], [TurnName], [TurnDataStart], [TurnEndDate], [TurnToGenerate]) VALUES (5, N'turno 2', CAST(N'2017-10-29T00:00:00.000' AS DateTime), CAST(N'2017-11-09T00:00:00.000' AS DateTime), 1)
GO

SET IDENTITY_INSERT [dbo].[TurnTerapy] OFF
GO

SET IDENTITY_INSERT [dbo].[CustomerTurn] ON
GO

INSERT [dbo].[CustomerTurn] ([CustomerTurnID], [CustomerID], [TurnID]) VALUES (1, 4, 4)
GO

INSERT [dbo].[CustomerTurn] ([CustomerTurnID], [CustomerID], [TurnID]) VALUES (3, 5, 4)
GO

INSERT [dbo].[CustomerTurn] ([CustomerTurnID], [CustomerID], [TurnID]) VALUES (4, 5, 5)
GO

SET IDENTITY_INSERT [dbo].[CustomerTurn] OFF
GO

SET IDENTITY_INSERT [dbo].[MessagesTranslation] ON
GO

INSERT [dbo].[MessagesTranslation] ([MessageId], [MessageEn]) VALUES (3, N'The start date need to be inferior than end date.')
GO

SET IDENTITY_INSERT [dbo].[MessagesTranslation] OFF
GO

INSERT [dbo].[UnableTerapyCustomer] ([TerapyTypeID], [CustomerID]) VALUES (2, 3)
GO

INSERT [dbo].[UnableTerapyCustomer] ([TerapyTypeID], [CustomerID]) VALUES (3, 4)
GO

INSERT [dbo].[UnableTerapyCustomer] ([TerapyTypeID], [CustomerID]) VALUES (4, 3)
GO

INSERT [dbo].[UnableTerapyCustomer] ([TerapyTypeID], [CustomerID]) VALUES (5, 5)
GO
