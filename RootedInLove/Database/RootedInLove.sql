USE [master]
GO
/****** Object:  Database [RootedInLove_db]    Script Date: 3/12/2017 4:48:29 PM ******/
CREATE DATABASE [RootedInLove_db]
GO
ALTER DATABASE [RootedInLove_db] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RootedInLove_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RootedInLove_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RootedInLove_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RootedInLove_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RootedInLove_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RootedInLove_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [RootedInLove_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RootedInLove_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RootedInLove_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RootedInLove_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RootedInLove_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RootedInLove_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RootedInLove_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RootedInLove_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RootedInLove_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RootedInLove_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RootedInLove_db] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [RootedInLove_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RootedInLove_db] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RootedInLove_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RootedInLove_db] SET  MULTI_USER 
GO
ALTER DATABASE [RootedInLove_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RootedInLove_db] SET QUERY_STORE = ON
GO
ALTER DATABASE [RootedInLove_db] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [RootedInLove_db]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/12/2017 4:48:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Artists]    Script Date: 3/12/2017 4:48:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[AboutDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[GooglePlayLink] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Artists] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Presentations]    Script Date: 3/12/2017 4:48:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PDFDownloadLink] [nvarchar](max) NULL,
	[ShortName] [nvarchar](max) NULL,
	[Presenter_ID] [int] NULL,
 CONSTRAINT [PK_dbo.Presentations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[PricingGroups]    Script Date: 3/12/2017 4:48:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PricingGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PluralName] [nvarchar](max) NULL,
	[QuantityThreshold1] [nvarchar](max) NULL,
	[QuantityThresholdPrice1] [nvarchar](max) NULL,
	[QuantityThreshold2] [nvarchar](max) NULL,
	[QuantityThresholdPrice2] [nvarchar](max) NULL,
	[QuantityThreshold3] [nvarchar](max) NULL,
	[QuantityThresholdPrice3] [nvarchar](max) NULL,
	[QuantityThreshold4] [nvarchar](max) NULL,
	[QuantityThresholdPrice4] [nvarchar](max) NULL,
	[QuantityThreshold5] [nvarchar](max) NULL,
	[QuantityThresholdPrice5] [nvarchar](max) NULL,
	[QuantityThreshold6] [nvarchar](max) NULL,
	[QuantityThresholdPrice6] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PricingGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/12/2017 4:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[AddToCartLink] [nvarchar](max) NULL,
	[GooglePlayLink] [nvarchar](max) NULL,
	[ShortName] [nvarchar](max) NULL,
	[Author_ID] [int] NULL,
	[category_ID] [int] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201703050607226_InitialCreate', N'RootedInLove.Models.ApplicationDbContext', 0x1F8B0800000000000400ED5D596F1CB9117E0F90FFD098A724D0CEE8B004C79076A11D595E21BAE291177913A86E6AD4701FB3DD6C594A905F9687FCA4FC85907DF26CB2EFB1D7306068BAC9AF8AC562B18A47F5FFFEF3DFE39F5E7CCF7A8651EC86C1C96C6FBE3BB36060878E1BAC4F66097AFCE1EDECA71FFFF887E3F78EFF62FD5A943B20E570CD203E993D21B479B758C4F613F4413CF75D3B0AE3F011CDEDD05F00275CECEFEEFE75B1B7B780186286B12CEBF8631220D787E90FFC73190636DCA0047857A103BD387F8EDFAC5254EB1AF830DE001B9ECC3E862182CE4570193EC379567C669D7A2EC0ACACA0F738B34010840820CCE8BB4F315CA1280CD6AB0D7E00BCBBD70DC4E51E8117C3BC01EFAAE2A66DD9DD276D5954150B283B8951E83704DC3BC885B3E0ABB712F1AC141E16DF7B2C66F44A5A9D8AF064761A213746338B27F56EE945A49854BEF3ACD68E45BFDB29B5012B0DF9B7632D130F25113C09608222E0ED58B7C983E7DA7F83AF77E167189C0489E7D1EC6106F13BE6017E741B851B18A1D78FF03167FAE26C662DD87A0BBE62598DAA9335E8224007FB33EB1A13070F1E2C7B9F6AFC0A8511FC00031801DCBE5B80108C70E75D3830959F409DA3B57A0A2344FE2C48629DC3E367665D81974B18ACD1D3C90CFF39B3CEDD17E8144F72363E052E1E6EB8128A12A8A3748E1B310AA1D38730416730B6237793A9E2C0042F7CB01EBE591FC270EDC15B0FBC5EBAC1E7FEC95D8367779DEA1447F836823156A6F415B6571FA197FDF9E46E32B335A74BDCE73F6084998842FF63E871185589FB3B10AD211ED277616DB155984476238E4327B1918AD9F4E5FD6982B0EEB34CD26F24CC31AF654C1D2F2AAB556BCBE88636B56874DDEF764D41EBCE45DEF063724C2B737B767E167E09BC1038C31880F166069DA921B6A34F33530C558D9929067CCB119D5A87E68339ADF67D1CFF6EC6F138DEC2A9E3DC854B10A1516CC5D0BEC91698A6C25DE8E251887648EA7098B264E311B50EA3570553AE8D65F2210A93CD7DFAFF15F41FB05961F9531492383FAA921DFDA00AB6B9E9ACEA7EB79F0A5AA3445CB75E82653A0AA9BF2720D3A1273C6D3F859EB3373E49A2787002BAFB13357502BA0713357502BA6F266AEA04740F276AEA04748F266AEA007495FE07EB55F4EF8388EE92CE5B69E5831453292152E7835C954BD7A7F1E61AA27951719E419E4718EE4B187D9ED3883B9671BDCA6DD937755B0EF61E1E0FDE1E1E01E7E0E80D3C386CE5C2382D5C18A746CFF6F6DF1AE999E0F6747265F60F8F7AA1AA54F74FB14ACFE9FEBECF8B550A2EBE15345B52A417952650FDAB7581BAFDAA4D3815D55B5A9434A8CD4828488C3D1A0A7E87A56BAC71A79B0DEEBC54B588441AEFD2B1D5A70BE7BE125BF8DE07AED7833134A0B20C834737F261D9CA9F43AC7A2068CCF32D88636C0B9C5F40FC34FC1211B49308ABE80A017F337C00FC1406F03A21CEC898B47AEB9ABB2FE139B05118BD0F48ADCE7897A1FD394CD0FBC03903087E427601487EDEB9BE39402FEC9CDA368CE373ACCCD05986498074EB2FF570C4424DED8C2C3DE0FA726F84B3A5F745D1CA23919710BC1245B1A6CB9497E1DA556C1CF3148AA26A56B3125A56F3624D592560669CE625D58CA605B47C66A57AF3F5D21EEADFD94B61B7DFDBEB36790FBF163B95AB98761F213AF8DC9452FA157849DFA45A8D86D408F43F1A52D8ED1F0D299BF8F1B3EB10AFC420042A0A6378A3F2F2E84A3FE638CEC61E0E4C33C7263E8E0D500D97D3380E6D371D05928348D4990AB60DD88FB3CC0E5864ADE20F6BE006628577C9D487993A99FD4590929642B91F595128CE83B2D8BBF3F91E2F0CAAD93A69303BB96A1EE5DBBA74EBF3D3204D1A2E3F7D367083552BB46A36B5CBB5B418E8ED5D1DDF8674249231137703B94856F4548CD62DEF551CB28BCC2C9B7B33DED6DE0467D083085AA77676167B09621B38A275C1E3DC69C0984474E252A14E65F1040023520990B581184F606E80C4D9C20D6C77033CAD94B89A869E1D697B49837F730637302004B59230212E5F19240C9474B84ED149A881222A8239559FEB223BCA98F00B76A3E8A426A454E8651ED60CA298F5121B4139EB4562C28072957B0A05CD43785305E0E3F96D53506E2141A1A079A4318A82B2129B404159917C750A9AADDC98F63FB78CB36DEAC9AE1F8D3FADD78A6B02DD64E4B165AA998564B80EC2356024AAE7D90379095F6487C8319FF9B2459C4780BC8A10F01544CC65B978665581201745089E370BC0DDFA1160D8F84E0B565CC891E0E4AEBB16A28A07E43874A8A101CB576F0510D64BD780F043AC0EB01A861AD0FCF480D86BBCB969C05CB10150CB5DEE6335802D16EB6B61F3999183A546885CE3E8EB1D54E1FA8B20FC10365EB6285B29A8BD60168C172A28CC722CF2869E15839188D893E632D1A857304CD63018511483B6560AD2558B815AAF3C4E261384D1CA46C3B50D463C8C41AA95916E29C340EA2DE4253B96240A4AB7D461BAD841B521B7863522A9599BA0702416B6B35054BBA3A2604C42EF26C137D5B0BC336A04A4099415422A1AD3BB940A5BAF97922CFE6B120176921217AD29A45434A67729E53AAA179224066910857412111B31F434D88AFD86D2B92DDF1D2FB23418F983E385225FC6F115D86CB091A4F267E44FAC55963C63F9C3AA7952093FC358D88CB47957BCA484C208AC21F71693C69C9EBB518CCE00020F80ECB62C1D5F282675E515FE544192F5D6C56E2C5CABA23CF9BBF06155C92E24814F5EFD1C37CF27D153BA932D4CD262458BA431011E8824579896A197F881EA1A545D6DEAFE1E0D423D36C7AAD24AD050D5537324316F048D28BE3547CEAF7C3202CB1E9963F0572C6930FE9D887ABCE034400877055513162558CD35D26BD69BEEAADD4CC8D95CC7EBAB0FA3E9F9F5651A207F648EA154C996DA282412A0318597C38EEAC9F43277B2BBAB64B67AD1461B15357F3F8AD88759E4EEB933169B7D3596A9FD2686071DDA761F23D4CA5C9B8152577D98D1227653536782BE12CDD857EAB9399AECD6338D2A7BDF01BDB8E05C4BA228D481CEBE86C47EF756E84814853AD039D09038E8DE0A1D89A250073A6F3424DE746F858E4451A8039D430D89C3EEADD091280A75A073A42171D4BD153A1245A1AD9993544B26CDE6226683A7F95C545F5D391739DC5C24D96F54D7369F8B26EA1971E1A8AF5E2A77CDDAF7941A4225EF62479896B86A97588D521C1AA3515407C926EB39D56A7FC345276E6BB2C5EA930E619891955FA2A401F2470D31A87B780218F5AE81F7C85C9564FC47E64D83E883BD0FC94420ECAB065CD2B71E1926E917ADF0141295976810050BF71C998058786B8E2CB9F148434B5EB7C096F0CCBF6B10398B972299E8597C6D8E5DDD90E4ADE816CF5DCAFDBDF6935776A8A2DBECA5C018C624F633F95117CE6820EA7143ACFC4A9900963FDF4A75526E84B657A7EC304D37755260A86D0F73578B353DB517CCD498CC052CC6BCD75D4053E33553DAA15583DD2455EF87D0479CCCF73DE85A4D3638C88EB0D00D75079844B919ADB35538B215B7F46C6B81D09A43E5F1D2D62B81B57C614FC371D303C51731B97557DEB8336D37BF71DE426DD8635F467B126569C39D07A9FC6587BB5ACA3D07E9452D6447D7B64A1D948DED41179487E0CC97E1B98A5D34447362AE65AF14A96DFB5117CDF1BBADD29C9A96EB75473887C3172927BFFC49F9BB3C87939F81D17FCC46381493159959C52C8E23CBD718417F4E0ACC57BF794BCF85248E280A5C81C07D8431CAEEBCCFF677F7F6E7A7FF4C22C87D14677B3E50B3886387C92BA5FC4A0DDB7123A412768964B5092A1ADE5617126D07CF20B29F40F4271FBCFC99866BF305984E60AAAFBC74026572B377429267446F00D9EE5322DF86DADDD149FF3B7543DF0AA2F8084727CC7E0719EB88529D245C29BA081CF87232FB575AF19D75F18F7BBAEE8E7513611BFDCEDAB5FEDD9BA64ADC8AEF4ADABB92F667C5A45F9198D62E0E3D7E28CFBDD9E0292B9A8F1C913AE3FD35A34F551D64ECAA4EE17CB503B83F932B7CFEA0139CFA1307FDC2B29F31E8177B7F409607C23E1890E581B0DF0CC8F240D88703B23C10F6D1802CB7C16E97D8BE8DCDEE944FB1689198DDAC073BAD9F1149A3C95FE9E31DEB22FE14B8BF25F8C51D16289916F96CADFDE4C1AE3F77B2A559CBCDA58AFD8CAC2AEB6274EC61369779236EB2AA1DB8699DE1FCEB1D504CF270292A3720DAE70A7F70512F79C2BB0508B25CE0DD3C3E31DF775F78BD885095CFBB0D963297B7837FA2349777B3C6CA737BB7614D99D73B8D173A66F536374345CD09A71AC92191314CD22071D976CD4D42F2E44E035D4C903CA4E3A738EFF14DE60FEE6D76BC15D303F7863DA56A0F9613B8482825C931D530E32B9D514A996A6A983C66AA8BF3262B5956938C659A4BCCB251557FA26684147AB7666991FB53843C25982C4DD857DFFDAA0BC322A9DA1333A3747B97E4D0FD25821E5B1B34175627D509CDC19811B4A2656AEC6DC9865D65E21B3F5BA6E6F6998977DE48B10CEE51992E298DA45CDDD25D6F418256494AC5FA848B63A4651D5BD754D71E1A2C756E7FEAEA2D53B63CD1667D1ACE6F51D9549722B65CD91AA5A1DE325D9B6AFE9C58D38CA7D0C9934A8B09EBF86ECDCF7AB38756D5C9A2B3B3BD2733E721C41D9FAD31A812BBF2E06CF82E90605FCB08D5E6E455E59AAE4B352D27A2C8BB2AE2D3A18C8408FD5A4EA92671AC32E37236AC0472EC6B6937A55F279367745411ABC6B1926055444D549D4A525040DEA6899AC897A827DBACADB92F56DBD8BC4C3D594502D63ADAF9D45C4B3B2F534F5B91D674EC5CDBAC2DA1B34B8AF650B5F8A7BAD4A6B91061D4F0DE3268B76D28639E98FB367D346FC414D9CA74D8130A60E09CD7D28CB9B2C4FE1ADF4982A2FC44C036E7B866B5BFFE1B05BA38592113F98709B639A5752F4261A605C52DEEFE85325406EB5E44D2E7D06990B15ABC1187FDF52420471FB25F673076D71504B9E717409BF1D4CB3217C16358040C1C4745116ECFF00A22E060379ECC2D8FC046F83539F5907E3734DD4926676F1EC86DCF9B046D12849B8CADB8C76CC192C0A38E7E9A969BE5F9F826BD9010F7D104CCA64B4E8BDC043F27AEE7947C9F4B7629151024A2C9CF1890BE44E4ACC1FAB544BA0E0343A05C7C65207607FD8D87C1E29B60059E611BDEB0FA5DC235B05FAB3D691588BE2358B11F9FB9601D013FCE31AAFAF827D661C77FF9F1FFDBE05A3D0BA10000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Artists] ON 

INSERT [dbo].[Artists] ([ID], [ShortName], [FullName], [AboutDescription], [Image], [GooglePlayLink]) VALUES (1, N'James', N'Dr. James Healy', N'Dr. Healy has been the director of the Center for Family Ministry of the Catholic Diocese of Joliet, Illinois since 1989. He has spoken on marriage in over 85 dioceses across the country and beyond.  His marriage preparation and enrichment materials, most notably his CD, When the Cake is Gone: How to Be Married and Stay Engaged, and his Living Together and Christian Commitment materials, have been used in every diocese in the United States. Dr. Healy has contributed chapters to a number of books, and has written for such magazines as Family Perspectives, Catholic World, Liguorian, Marriage, and Deacon Digest. Dr. Healy was the founding president of Illinois Catholic Family Ministries, and has served as an adviser to the National Council of Catholic Bishops'' Committee on Marriage and the Family. He was honored with the 2000  Family Ministry Award by the National Association of Catholic Family Life Ministers. He and his wife Madonna have four children.', N'/Images/JamesHealy.png', N'https://play.google.com/store/music/artist/Dr_James_Healy?id=Abzt6zixwuwg5rz4yxgs7fpzgc4')
INSERT [dbo].[Artists] ([ID], [ShortName], [FullName], [AboutDescription], [Image], [GooglePlayLink]) VALUES (2, N'Madonna', N'Dr. Madonna Wojtaszek-Healy', N'Madonna Wojtaszek-Healy is the Consultant for Special Needs for the Office of Religious Education of the Diocese of Joliet. She is also the Vice President of Rooted in Love, Inc.  She holds a Ph.D. in Educational Psychology from the University of Illinois. Madonna has taught at both Catholic and public universities and elementary schools. She is also an experienced catechist, a role she continues to enjoy. Her mission is to include all children, whether their needs are “special” or not, in the educational and spiritual life of the Church. A popular speaker at both the national and diocesan level, Madonna served on the Autism Task Force of the National Catholic Partnership on Disability from 2012 through its completion in 2014. She co-designed and teaches the course on ADHD for the University of Dayton’s online learning program for catechists. She also teaches the University’s online course on Autism. Madonna herself has children with special needs. She is the author of The ABC’s of A.D.H.D. for Catechists, Creating Best Outcomes for Students with ADHD, and The Day That Matthew Changed. Madonna lives in Joliet with her husband Jim. They have four adult children.', N'/Images/MadonnaHealy.png', NULL)
SET IDENTITY_INSERT [dbo].[Artists] OFF
SET IDENTITY_INSERT [dbo].[Presentations] ON 

INSERT [dbo].[Presentations] ([ID], [Title], [Description], [PDFDownloadLink], [ShortName], [Presenter_ID]) VALUES (1, N'Making Happiness a Habit', N'Happiness in marriage comes, not so much
from the “once in a lifetime” events, wonderful
as they are, but by the things we do over and
over again. What are these “habits of the heart”
that lead to joy and fulfillment? They are firmly
grounded in our Catholic faith, but social
science research has also suggested their
importance for human happiness', N'/Documents/HappinessAHabit.pdf', N'Happiness', 1)
INSERT [dbo].[Presentations] ([ID], [Title], [Description], [PDFDownloadLink], [ShortName], [Presenter_ID]) VALUES (2, N'To Welcome and to Witness', N'In this daylong workshop, Dr. Healy responds to
foundational issues regarding marriage
preparation. What can we accomplish at the time
of marriage preparation? What do we know
about marriage preparation? What should our
attitude be towards the engaged couple? In
addition to the foundational issues, Dr. Healy
will thoroughly address the two topics which
most trouble many of those involved in marriage
preparation ministry: working with couples who
are living together, and working with couples
who are “spiritual but not religious.”', N'/Documents/ToWelcomeandtoWitness.pdf', N'Witness', 1)
INSERT [dbo].[Presentations] ([ID], [Title], [Description], [PDFDownloadLink], [ShortName], [Presenter_ID]) VALUES (3, N'How to Be Married and Stay Engaged', N'It takes three types of intimacy for a
marriage to thrive. Happily, these are also
the basis for our three Christian marriage vows.
In down to earth and sometimes humorous
ways, Dr. Healy will help couples discover again
what it takes to live out these vows fully and
joyfully. Designed for all ages and stages of
marriage! ', N'/Documents/HowToStayEngaged.pdf', N'Married', 1)
INSERT [dbo].[Presentations] ([ID], [Title], [Description], [PDFDownloadLink], [ShortName], [Presenter_ID]) VALUES (4, N'God Called Me to Dance, Even if I''m Out of Step', N'Full inclusion of people with disabilities in the life of the Church benefits us all. Children with autism spectrum disorders can pose behavioral problems in classroom and catechetical settings. Dr. Wojtaszek-Healy will share insights and strategies for evangelizing these children and their families.', NULL, N'Dance', 2)
INSERT [dbo].[Presentations] ([ID], [Title], [Description], [PDFDownloadLink], [ShortName], [Presenter_ID]) VALUES (5, N'Everyone’s Called to God’s Table, Even the Ones Who Can’t Sit Still in Their Seats', N'An understanding of Attention Deficit Disorder (ADD) and the children diagnosed with this condition will help teachers and catechists evangelize them and their families more effectively. Dr. Wojtaszek-Healy will share insights to manage behaviors and enjoy the gifts these children have.', NULL, N'Table', 2)
SET IDENTITY_INSERT [dbo].[Presentations] OFF
SET IDENTITY_INSERT [dbo].[PricingGroups] ON 

INSERT [dbo].[PricingGroups] ([ID], [Name], [PluralName], [QuantityThreshold1], [QuantityThresholdPrice1], [QuantityThreshold2], [QuantityThresholdPrice2], [QuantityThreshold3], [QuantityThresholdPrice3], [QuantityThreshold4], [QuantityThresholdPrice4], [QuantityThreshold5], [QuantityThresholdPrice5], [QuantityThreshold6], [QuantityThresholdPrice6]) VALUES (1, N'CD', N'CDs', N'1', N'$15.95', N'2', N'$14.00', N'10', N'$12.00', N'25', N'$10.00', N'50', N'$8.00', N'500', N'$4.00')
INSERT [dbo].[PricingGroups] ([ID], [Name], [PluralName], [QuantityThreshold1], [QuantityThresholdPrice1], [QuantityThreshold2], [QuantityThresholdPrice2], [QuantityThreshold3], [QuantityThresholdPrice3], [QuantityThreshold4], [QuantityThresholdPrice4], [QuantityThreshold5], [QuantityThresholdPrice5], [QuantityThreshold6], [QuantityThresholdPrice6]) VALUES (2, N'Booklet', N'Booklets', N'1', N'$2.50', N'50', N'$2.00', N'500', N'$1.50', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PricingGroups] ([ID], [Name], [PluralName], [QuantityThreshold1], [QuantityThresholdPrice1], [QuantityThreshold2], [QuantityThresholdPrice2], [QuantityThreshold3], [QuantityThresholdPrice3], [QuantityThreshold4], [QuantityThresholdPrice4], [QuantityThreshold5], [QuantityThresholdPrice5], [QuantityThreshold6], [QuantityThresholdPrice6]) VALUES (3, N'Book', N'Books', N'1', N'$10.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PricingGroups] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (1, N'When the Cake is Gone: How to Be Married and Stay Engaged', N'When the Cake is Gone is based on the "Back to Back, Face to Face and Shoulder to Shoulder" (corresponding to the three vows of Christian marriages) model of marriage enrichment created by Dr. Healy. Over 100,000 copies have bee purchased. Dioceses and parishes frequently give the CD to all the engaged couples who go through their programs.', N'/Images/Cake.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468808&ejc=2', N'https://play.google.com/store/music/album/Dr_James_Healy_When_the_Cake_is_Gone_How_to_Be_Mar?id=Bxkcjpnq65a27t23r5jx72q7kpq', N'Cake', 1, 1)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (2, N'Cuando El Pastel se Acaba: Cómo casarse y Mantenerse Casado', N'When the Cake is Gone is based on the "Back to Back, Face to Face and Shoulder to Shoulder" (corresponding to the three vows of Christian marriages) model of marriage enrichment created by Dr. Healy. Over 100,000 copies have bee purchased. Dioceses and parishes frequently give the CD to all the engaged couples who go through their programs.', N'/Images/Pastel.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468808&ejc=2', N'https://play.google.com/store/music/album/Dr_James_Healy_Cuando_El_Pastel_se_Acaba_C%C3%B3mo_casa?id=B2mztvvsrmshe7v3teep6tpjqfy', N'Pastel', 1, 1)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (3, N'Making Happiness a Habit: 4 Steps to a More Joyful Marriage', N'Happiness in marriage comes not so much from the "once ina a lifetime" events, wonderful as they are, but but by the things we do over and over again. Listen to Jim Healy talk about these four "habits of the heart" that lead to joy and fullfillment. They are firmly grounded in our faith, but social science research has also suggested their importance for human happiness.', N'/Images/Happiness.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468808&ejc=2', N'https://play.google.com/store/music/album/Dr_James_Healy_Making_Happiness_a_Habit_Four_Steps?id=Bixa4oyzzdt3lqxqhn3pvtvkyx4', N'Happiness', 1, 1)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (4, N'Living Together and Christian Commitment: A Reflection for Engaged Couples Who are Living Together', N'Couples who are living together and who approach the Church for marriage can present a prudent pastoral minister with some challenging issues. Reflecting on the social sciences, Church teaching and pastoral experience, Dr. Healy presents a way of working with these couples that is both welcoming and honest.', N'/Images/Together.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468880&ejc=2', NULL, N'Together', 1, 2)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (5, N'Vivir Juntos y el Comprimiso Cristiano: Una Reflexion Para Prometidoes Que Viven Juntos', N'Couples who are living together and who approach the Church for marriage can present a prudent pastoral minister with some challenging issues. Reflecting on the social sciences, Church teaching and pastoral experience, Dr. Healy presents a way of working with these couples that is both welcoming and honest.', N'/Images/Juntos.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468880&ejc=2', NULL, N'Juntos', 1, 2)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (6, N'Spirituality and Religion in Your Marriage: A Reflective Process for Engaged Couples', N'This booklet contains a short 20 item inventory that places the individual in one of four categories: 1) high in both Spirituality and Religion, 2) high in Spirituality and low in Religion, 3) low in both Religion and Spirituality, and 4) high in Religion and low in Spirituality. It affirms strengths and then encourages growth in both the individual and the couple towards category number 1', N'/Images/Spirituality.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468880&ejc=2', NULL, N'Spirituality', 1, 2)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (7, N'Espiritualidad y Religión en el Matrimonio: Un Proceso De Reflexion Para Parejas Comprometidas', N'This booklet contains a short 20 item inventory that places the individual in one of four categories: 1) high in both Spirituality and Religion, 2) high in Spirituality and low in Religion, 3) low in both Religion and Spirituality, and 4) high in Religion and low in Spirituality. It affirms strengths and then encourages growth in both the individual and the couple towards category number 1', N'/Images/Espiritualidad.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468880&ejc=2', NULL, N'Espiritualidad', 1, 2)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (8, N'The ABC''s of A.D.D. for Catechists', N'This booklet contains helpful insights and ideas to assist catechists in understanding Attention Deficit Disorder, so that they may be better able to nurture the faith and spiritual development of children afflicted with the condition', N'/Images/ABCs.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1468880&ejc=2', NULL, N'ABCs', 2, 2)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Image], [AddToCartLink], [GooglePlayLink], [ShortName], [Author_ID], [category_ID]) VALUES (9, N'The Day that Matthew Changed', N'Everything goes wrong for Matthew, but one day he discovers a way to change his world.', N'/Images/Matthew.jpg', N'https://www.e-junkie.com/ecom/gb.php?c=cart&cl=305985&i=1532071&ejc=2', NULL, N'Matthew', 2, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Index [IX_Presenter_ID]    Script Date: 3/12/2017 4:48:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_Presenter_ID] ON [dbo].[Presentations]
(
	[Presenter_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_Author_ID]    Script Date: 3/12/2017 4:48:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_Author_ID] ON [dbo].[Products]
(
	[Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_category_ID]    Script Date: 3/12/2017 4:48:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_category_ID] ON [dbo].[Products]
(
	[category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
ALTER TABLE [dbo].[Presentations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presentations_dbo.Artists_Presenter_ID] FOREIGN KEY([Presenter_ID])
REFERENCES [dbo].[Artists] ([ID])
GO
ALTER TABLE [dbo].[Presentations] CHECK CONSTRAINT [FK_dbo.Presentations_dbo.Artists_Presenter_ID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Artists_Author_ID] FOREIGN KEY([Author_ID])
REFERENCES [dbo].[Artists] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Artists_Author_ID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.PricingGroups_category_ID] FOREIGN KEY([category_ID])
REFERENCES [dbo].[PricingGroups] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.PricingGroups_category_ID]
GO
USE [master]
GO
ALTER DATABASE [RootedInLove_db] SET  READ_WRITE 
GO
