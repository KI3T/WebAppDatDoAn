USE [GrapeeDB]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](200) NULL,
	[Message] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](max) NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
	[Status] [varchar](50) NULL,
	[PaymentId] [int] NULL,
	[OrderDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CardNo] [varchar](50) NULL,
	[ExpiryDate] [varchar](50) NULL,
	[CvvNo] [int] NULL,
	[Address] [varchar](max) NULL,
	[PaymentMode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[ImageUrl] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Password] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([CartId], [ProductId], [Quantity], [UserId]) VALUES (2, 5, 4, 1)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate]) VALUES (4, N'Rice', N'Images/Category/4ea90615-1387-4da3-972e-bf846570ca52.png', 0, CAST(N'2022-10-30T22:33:23.350' AS DateTime))
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate]) VALUES (5, N'Burger', N'Images/Category/0a32c896-5b89-4079-98ed-ce27fde2593f.png', 1, CAST(N'2022-10-30T22:34:26.180' AS DateTime))
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate]) VALUES (10, N'Khoai Tay', N'Images/Category/3328fdee-5d49-48b1-a1b9-6e5a0be8aad5.png', 1, CAST(N'2022-10-31T10:55:01.413' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate]) VALUES (4, N'Beef Burger', N'Burger co mot mieng thit Bo', CAST(100000.00 AS Decimal(18, 2)), 50, N'Images/Product/12d4368d-970c-466c-8dfe-65e74ce5a371.png', 5, 1, CAST(N'2022-11-01T15:17:55.803' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate]) VALUES (5, N'Khoai Tay Chien', N'Khoai Tay Chien Gion', CAST(25000.00 AS Decimal(18, 2)), 30, N'Images/Product/8b088b9a-d22f-47fc-964e-9ca6d03ba272.png', 10, 1, CAST(N'2022-11-07T12:00:57.643' AS DateTime))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Name], [Username], [Mobile], [Email], [Address], [Password], [ImageUrl], [CreatedDate]) VALUES (1, N'Le Tuan Kiet', N'thienthan2001', N'1234567890', N'thienthan2001@gmail.com', N'Ho Chi Minh', N'123', NULL, CAST(N'2022-11-01T23:51:40.393' AS DateTime))
INSERT [dbo].[Users] ([UserId], [Name], [Username], [Mobile], [Email], [Address], [Password], [ImageUrl], [CreatedDate]) VALUES (2, N'Nguyen Van Trung', N'vantrung2001', N'9876543210', N'vantrung2001@gmail.com', N'Ho Chi Minh', N'123', N'Images/User/469fc1eb-f846-4162-b322-0a0edc4ce8f3.jpg', CAST(N'2022-11-02T00:27:19.740' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E4F21B5EC5]    Script Date: 07/11/2022 8:47:32 CH ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D105344FD727D6]    Script Date: 07/11/2022 8:47:32 CH ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payment] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payment] ([PaymentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payment]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  StoredProcedure [dbo].[Cart_Crud]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cart_Crud]
		@Action VARCHAR(10),
		@ProductId INT = NULL,
		@Quantity INT = NULL,
		@UserId INT = NULL
AS
BEGIN
 SET NOCOUNT ON;

 --SELECT
 IF @Action = 'SELECT'
    BEGIN
		SELECT c.ProductId,p.[Name],p.ImageUrl,p.Price,c.Quantity,c.Quantity AS Qty,p.Quantity AS PrdQty
		FROM dbo.Carts c
		INNER JOIN dbo.Products p ON p.ProductId = c.ProductId
		WHERE c.UserId = @UserId
    END

 --INSERT
 IF @Action = 'INSERT'
    BEGIN
		INSERT INTO dbo.Carts(ProductId,Quantity,UserId)
		VALUES(@ProductId,@Quantity,@UserId)
    END

 --UPDATE
 IF @Action = 'UPDATE'
    BEGIN
		UPDATE dbo.Carts
		SET Quantity = @Quantity
		WHERE ProductId = @ProductId AND UserId = @UserId
    END

 --DELETE
 IF @Action = 'DELETE'
    BEGIN
		DELETE FROM dbo.Carts
		WHERE ProductId = @ProductId AND UserId = @UserId
    END


 --GET BY ID (PRODUCTID & USERID)
 IF @Action = 'GETBYID'
    BEGIN
		SELECT*FROM dbo.Carts
		WHERE ProductId = @ProductId AND UserId = @UserId
    END

END
GO
/****** Object:  StoredProcedure [dbo].[Category_Crud]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Category_Crud]
	@Action VARCHAR(10),
	@CategoryId INT = NULL,
	@Name VARCHAR(100) = NULL,
	@IsActive BIT = false,
	@ImageUrl VARCHAR(MAX) = NULL
AS
BEGIN
	SET NOCOUNT ON;

    --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * FROM dbo.Categories ORDER BY CreatedDate DESC
      END

	   --ACTIVECATEGORY
    IF @Action = 'ACTIVECAT'
      BEGIN
            SELECT * FROM dbo.Categories WHERE IsActive = 1
      END
 
    --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO dbo.Categories(Name, ImageUrl, IsActive, CreatedDate)
            VALUES (@Name, @ImageUrl, @IsActive, GETDATE())
      END
 
    --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
		DECLARE @UPDATE_IMAGE VARCHAR(20)
		SELECT @UPDATE_IMAGE = (CASE WHEN @ImageUrl IS NULL THEN 'NO' ELSE 'YES' END)
		IF @UPDATE_IMAGE = 'NO'
			BEGIN
				UPDATE dbo.Categories
				SET Name = @Name, IsActive = @IsActive
				WHERE CategoryId = @CategoryId
			END
		ELSE
			BEGIN
				UPDATE dbo.Categories
				SET Name = @Name, ImageUrl = @ImageUrl, IsActive = @IsActive
				WHERE CategoryId = @CategoryId
			END
      END
 
    --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM dbo.Categories WHERE CategoryId = @CategoryId
      END

	--GETBYID
    IF @Action = 'GETBYID'
      BEGIN
            SELECT * FROM dbo.Categories WHERE CategoryId = @CategoryId
      END

END
GO
/****** Object:  StoredProcedure [dbo].[Product_Crud]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Crud]
        @Action VARCHAR(20),
        @ProductId INT = NULL,
        @Name VARCHAR(100) = NULL,
        @Description VARCHAR(MAX) = NULL,
        @Price DECIMAL(18,2) = 0,
        @Quantity INT = NULL,
        @ImageUrl VARCHAR(MAX) = NULL,
        @CategoryId INT = NULL,
        @IsActive BIT = false
AS
BEGIN
        SET NOCOUNT ON;


    --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT p.*,c.Name AS CategoryName FROM dbo.Products p
            INNER JOIN dbo.Categories c ON c.CategoryId = p.CategoryId ORDER BY p.CreatedDate DESC
      END

	  --ACTIVEPRODUCT
    IF @Action = 'ACTIVEPROD'
      BEGIN
            SELECT p.*,c.Name AS CategoryName FROM dbo.Products p
            INNER JOIN dbo.Categories c ON c.CategoryId = p.CategoryId 
			WHERE p.IsActive = 1
      END
        
    --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO dbo.Products(Name, Description, Price, Quantity, ImageUrl, CategoryId, IsActive, CreatedDate)
            VALUES (@Name, @Description, @Price, @Quantity, @ImageUrl, @CategoryId, @IsActive, GETDATE())
      END
 
    --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
                DECLARE @UPDATE_IMAGE VARCHAR(20)
                SELECT @UPDATE_IMAGE = (CASE WHEN @ImageUrl IS NULL THEN 'NO' ELSE 'YES' END)
                IF @UPDATE_IMAGE = 'NO'
                        BEGIN
                                UPDATE dbo.Products
                                SET Name = @Name, Description = @Description, Price = @Price, Quantity = @Quantity,
                                CategoryId = @CategoryId, IsActive = @IsActive
                                WHERE ProductId = @ProductId
                        END
                ELSE
                        BEGIN
                                UPDATE dbo.Products
                                SET Name = @Name, Description = @Description, Price = @Price, Quantity = @Quantity,
                                ImageUrl = @ImageUrl, CategoryId = @CategoryId, IsActive = @IsActive
                                WHERE ProductId = @ProductId
                        END
      END


--UPDATE QUANTITY
    IF @Action = 'QTYUPDATE'
        BEGIN
                UPDATE dbo.Products SET Quantity = @Quantity
                WHERE ProductId = @ProductId
        END
 
    --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM dbo.Products WHERE ProductId = @ProductId
      END
          
--GETBYID
    IF @Action = 'GETBYID'
      BEGIN
            SELECT * FROM dbo.Products WHERE ProductId = @ProductId
      END


END
GO
/****** Object:  StoredProcedure [dbo].[User_Crud]    Script Date: 07/11/2022 8:47:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Crud] 
        @Action VARCHAR(20),
        @UserId INT = NULL,
        @Name varchar(50) = null,
        @Username varchar(50) = null,
        @Mobile varchar(50) = null,
        @Email varchar(50) = null,
        @Address varchar(max) = null,
        @Password varchar(50) = null,
        @ImageUrl varchar(max) = null
AS
BEGIN
        SET NOCOUNT ON;


        --SELECT FOR LOGIN
    IF @Action = 'SELECT4LOGIN'
      BEGIN
            SELECT * FROM dbo.Users WHERE Username = @Username and Password = @Password
      END


        --SELECT FOR USER PROFILE
    IF @Action = 'SELECT4PROFILE'
      BEGIN
            SELECT * FROM dbo.Users WHERE UserId = @UserId
      END


    -- Insert (REGISTRATION)
        IF @Action = 'INSERT'
                BEGIN
                        Insert into dbo.Users([Name],Username,Mobile,Email,[Address],[Password],ImageUrl,CreatedDate) 
                        values (@Name,@Username,@Mobile,@Email,@Address,@Password,@ImageUrl,GETDATE())
                END


        --UPDATE USER PROFILE
    IF @Action = 'UPDATE'
      BEGIN
                DECLARE @UPDATE_IMAGE VARCHAR(20)
                SELECT @UPDATE_IMAGE = (CASE WHEN @ImageUrl IS NULL THEN 'NO' ELSE 'YES' END)
                IF @UPDATE_IMAGE = 'NO'
                        BEGIN
                                UPDATE dbo.Users
                                SET Name = @Name, Username = @Username, Mobile = @Mobile, Email = @Email, [Address] = @Address
                                WHERE UserId = @UserId
                        END
                ELSE
                        BEGIN
                                UPDATE dbo.Users
                                SET Name = @Name, Username = @Username, Mobile = @Mobile, Email = @Email, [Address] = @Address,
                                ImageUrl = @ImageUrl
                                WHERE UserId = @UserId
                        END
      END


        --SELECT FOR ADMIN
        IF @Action = 'SELECT4ADMIN'
                BEGIN
                        SELECT ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS [SrNo],UserId, Name, 
                        Username, Email, CreatedDate
                        FROM Users
                END


        --DELETE BY ADMIN
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM dbo.Users WHERE UserId = @UserId
      END
END
GO
