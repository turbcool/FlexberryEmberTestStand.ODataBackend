



CREATE TABLE [GraduateRecord] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [GrFIO] NVARCHAR(MAX)  NULL,

	 [GrYearGrad] INT  NULL,

	 [UniquelD] NVARCHAR(MAX)  NULL,

	 [ObjectPK] INT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Localization] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Name] NVARCHAR(MAX)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [LookupDropdown] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Name] NVARCHAR(MAX)  NULL,

	 [MasterLookupDropdown] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [listLocalization] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] NVARCHAR(MAX)  NULL,

	 [localeValue] NVARCHAR(MAX)  NULL,

	 [Catalog] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [SuccessorSocialNetwork] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [VK] NVARCHAR(MAX)  NULL,

	 [Facebook] NVARCHAR(MAX)  NULL,

	 [Twitter] NVARCHAR(MAX)  NULL,

	 [Name] NVARCHAR(MAX)  NULL,

	 [EMail] NVARCHAR(MAX)  NULL,

	 [Birthday] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [CatalogMaster] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] NVARCHAR(MAX)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [SuggestionType] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Name] NVARCHAR(MAX)  NOT NULL,

	 [Moderated] BIT  NULL,

	 [Parent] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Catalog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] NVARCHAR(MAX)  NULL,

	 [CatalogMaster] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [LocalizedSuggestionType] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Name] NVARCHAR(MAX)  NOT NULL,

	 [Localization] UNIQUEIDENTIFIER  NOT NULL,

	 [SuggestionType] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [LazyLoadingDetail] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [DetailText] NVARCHAR(MAX)  NULL,

	 [LazyLoadingMaster] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [MasterLookupDropdown] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Text] NVARCHAR(MAX)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [LazyLoadingMaster] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [MasterText] NVARCHAR(MAX)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationUser] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Name] NVARCHAR(MAX)  NOT NULL,

	 [EMail] NVARCHAR(MAX)  NOT NULL,

	 [Phone1] NVARCHAR(MAX)  NULL,

	 [Phone2] NVARCHAR(MAX)  NULL,

	 [Phone3] NVARCHAR(MAX)  NULL,

	 [Activated] BIT  NULL,

	 [VK] NVARCHAR(MAX)  NULL,

	 [Facebook] NVARCHAR(MAX)  NULL,

	 [Twitter] NVARCHAR(MAX)  NULL,

	 [Birthday] DATETIME  NULL,

	 [Gender] VARCHAR(6)  NULL,

	 [Vip] BIT  NULL,

	 [Karma] DECIMAL(18,2)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [TestPolyAnotherChild] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ChildAnotherPole] BIT  NULL,

	 [Pole] NVARCHAR(MAX)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [SuccessorPhone] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Phone1] NVARCHAR(MAX)  NULL,

	 [Phone2] NVARCHAR(MAX)  NULL,

	 [Phone3] NVARCHAR(MAX)  NULL,

	 [Name] NVARCHAR(MAX)  NULL,

	 [EMail] NVARCHAR(MAX)  NULL,

	 [Birthday] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Vote] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [VoteType] VARCHAR(7)  NULL,

	 [ApplicationUser] UNIQUEIDENTIFIER  NOT NULL,

	 [Suggestion] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Master] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Name] NVARCHAR(MAX)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Suggestion] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Address] NVARCHAR(MAX)  NULL,

	 [Text] NVARCHAR(MAX)  NULL,

	 [Date] DATETIME  NULL,

	 [Votes] INT  NULL,

	 [Moderated] BIT  NULL,

	 [Author] UNIQUEIDENTIFIER  NOT NULL,

	 [Type] UNIQUEIDENTIFIER  NOT NULL,

	 [Editor1] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [TogglerExampleMaster] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [TogglerExampleMasterProperty] NVARCHAR(MAX)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ChildLevel2] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [TextChild2] NVARCHAR(MAX)  NULL,

	 [obj] NVARCHAR(MAX)  NULL,

	 [TextChild1] NVARCHAR(MAX)  NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Address] NVARCHAR(MAX)  NULL,

	 [Text] NVARCHAR(MAX)  NULL,

	 [Date] DATETIME  NULL,

	 [Votes] INT  NULL,

	 [Moderated] BIT  NULL,

	 [Author] UNIQUEIDENTIFIER  NOT NULL,

	 [Type] UNIQUEIDENTIFIER  NOT NULL,

	 [Editor1] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ChildLevel1] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [TextChild1] NVARCHAR(MAX)  NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Address] NVARCHAR(MAX)  NULL,

	 [Text] NVARCHAR(MAX)  NULL,

	 [Date] DATETIME  NULL,

	 [Votes] INT  NULL,

	 [Moderated] BIT  NULL,

	 [Author] UNIQUEIDENTIFIER  NOT NULL,

	 [Type] UNIQUEIDENTIFIER  NOT NULL,

	 [Editor1] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Parent] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Name] NVARCHAR(MAX)  NULL,

	 [EMail] NVARCHAR(MAX)  NULL,

	 [Birthday] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Comment] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Text] NVARCHAR(MAX)  NULL,

	 [Votes] INT  NULL,

	 [Moderated] BIT  NULL,

	 [Author] UNIQUEIDENTIFIER  NOT NULL,

	 [Suggestion] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [TogglerExampleDetail] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [TogglerExampleDetailProperty] NVARCHAR(MAX)  NULL,

	 [TogglerExampleMaster] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [TestPoly] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [SelfPole] NVARCHAR(MAX)  NULL,

	 [Relation_m0] UNIQUEIDENTIFIER  NULL,

	 [Relation_m1] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [StudentRecord] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [SrFIO] NVARCHAR(MAX)  NULL,

	 [SrCours] INT  NULL,

	 [UniquelD] NVARCHAR(MAX)  NULL,

	 [ObjectPK] INT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [TestPolyChild] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ChildPole] INT  NULL,

	 [Pole] NVARCHAR(MAX)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Detail] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Name] NVARCHAR(MAX)  NULL,

	 [ParentDetail] UNIQUEIDENTIFIER  NULL,

	 [Master] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [SuggestionFile] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [Order] INT  NULL,

	 [File] NVARCHAR(MAX)  NULL,

	 [Suggestion] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [CommentVote] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [CreateTime] DATETIME  NULL,

	 [Creator] NVARCHAR(MAX)  NULL,

	 [EditTime] DATETIME  NULL,

	 [Editor] NVARCHAR(MAX)  NULL,

	 [VoteType] VARCHAR(7)  NULL,

	 [ApplicationUser] UNIQUEIDENTIFIER  NOT NULL,

	 [Comment] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMNETLOCKDATA] (

	 [LockKey] VARCHAR(300)  NOT NULL,

	 [UserName] VARCHAR(300)  NOT NULL,

	 [LockDate] DATETIME  NULL,

	 PRIMARY KEY ([LockKey]))


CREATE TABLE [STORMSETTINGS] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Module] varchar(1000)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [User] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAdvLimit] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [User] varchar(255)  NULL,

	 [Published] bit  NULL,

	 [Module] varchar(255)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [HotKeyData] int  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERSETTING] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMWEBSEARCH] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [Order] INT  NOT NULL,

	 [PresentView] varchar(255)  NOT NULL,

	 [DetailedView] varchar(255)  NOT NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERDETAIL] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Caption] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 [ConnectMasterProp] varchar(255)  NOT NULL,

	 [OwnerConnectProp] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERLOOKUP] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [DataObjectType] varchar(255)  NOT NULL,

	 [Container] varchar(255)  NULL,

	 [ContainerTag] varchar(255)  NULL,

	 [FieldsToView] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [UserSetting] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [AppName] varchar(256)  NULL,

	 [UserName] varchar(512)  NULL,

	 [UserGuid] uniqueidentifier  NULL,

	 [ModuleName] varchar(1024)  NULL,

	 [ModuleGuid] uniqueidentifier  NULL,

	 [SettName] varchar(256)  NULL,

	 [SettGuid] uniqueidentifier  NULL,

	 [SettLastAccessTime] DATETIME  NULL,

	 [StrVal] varchar(256)  NULL,

	 [TxtVal] varchar(max)  NULL,

	 [IntVal] int  NULL,

	 [BoolVal] bit  NULL,

	 [GuidVal] uniqueidentifier  NULL,

	 [DecimalVal] decimal(20,10)  NULL,

	 [DateTimeVal] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationLog] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Category] varchar(64)  NULL,

	 [EventId] INT  NULL,

	 [Priority] INT  NULL,

	 [Severity] varchar(32)  NULL,

	 [Title] varchar(256)  NULL,

	 [Timestamp] DATETIME  NULL,

	 [MachineName] varchar(32)  NULL,

	 [AppDomainName] varchar(512)  NULL,

	 [ProcessId] varchar(256)  NULL,

	 [ProcessName] varchar(512)  NULL,

	 [ThreadName] varchar(512)  NULL,

	 [Win32ThreadId] varchar(128)  NULL,

	 [Message] varchar(2500)  NULL,

	 [FormattedMessage] varchar(max)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAG] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(80)  NOT NULL,

	 [Login] varchar(50)  NULL,

	 [Pwd] varchar(50)  NULL,

	 [IsUser] bit  NOT NULL,

	 [IsGroup] bit  NOT NULL,

	 [IsRole] bit  NOT NULL,

	 [ConnString] varchar(255)  NULL,

	 [Enabled] bit  NULL,

	 [Email] varchar(80)  NULL,

	 [CreateTime] datetime  NULL,

	 [Creator] varchar(255)  NULL,

	 [EditTime] datetime  NULL,

	 [Editor] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMLG] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Group_m0] uniqueidentifier  NOT NULL,

	 [User_m0] uniqueidentifier  NOT NULL,

	 [CreateTime] datetime  NULL,

	 [Creator] varchar(255)  NULL,

	 [EditTime] datetime  NULL,

	 [Editor] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAuObjType] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] nvarchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAuEntity] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [ObjectPrimaryKey] nvarchar(38)  NOT NULL,

	 [OperationTime] DATETIME  NOT NULL,

	 [OperationType] nvarchar(100)  NOT NULL,

	 [ExecutionResult] nvarchar(12)  NOT NULL,

	 [Source] nvarchar(255)  NOT NULL,

	 [SerializedField] nvarchar(max)  NULL,

	 [User_m0] uniqueidentifier  NOT NULL,

	 [ObjectType_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAuField] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Field] nvarchar(100)  NOT NULL,

	 [OldValue] nvarchar(max)  NULL,

	 [NewValue] nvarchar(max)  NULL,

	 [MainChange_m0] uniqueidentifier  NULL,

	 [AuditEntity_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))




 ALTER TABLE [LookupDropdown] ADD CONSTRAINT [LookupDropdown_FMasterLookupDropdown_0] FOREIGN KEY ([MasterLookupDropdown]) REFERENCES [MasterLookupDropdown]
CREATE INDEX LookupDropdown_IMasterLookupDropdown on [LookupDropdown] ([MasterLookupDropdown])

 ALTER TABLE [listLocalization] ADD CONSTRAINT [listLocalization_FCatalog_0] FOREIGN KEY ([Catalog]) REFERENCES [Catalog]
CREATE INDEX listLocalization_ICatalog on [listLocalization] ([Catalog])

 ALTER TABLE [SuggestionType] ADD CONSTRAINT [SuggestionType_FSuggestionType_0] FOREIGN KEY ([Parent]) REFERENCES [SuggestionType]
CREATE INDEX SuggestionType_IParent on [SuggestionType] ([Parent])

 ALTER TABLE [Catalog] ADD CONSTRAINT [Catalog_FCatalogMaster_0] FOREIGN KEY ([CatalogMaster]) REFERENCES [CatalogMaster]
CREATE INDEX Catalog_ICatalogMaster on [Catalog] ([CatalogMaster])

 ALTER TABLE [LocalizedSuggestionType] ADD CONSTRAINT [LocalizedSuggestionType_FLocalization_0] FOREIGN KEY ([Localization]) REFERENCES [Localization]
CREATE INDEX LocalizedSuggestionType_ILocalization on [LocalizedSuggestionType] ([Localization])

 ALTER TABLE [LocalizedSuggestionType] ADD CONSTRAINT [LocalizedSuggestionType_FSuggestionType_0] FOREIGN KEY ([SuggestionType]) REFERENCES [SuggestionType]
CREATE INDEX LocalizedSuggestionType_ISuggestionType on [LocalizedSuggestionType] ([SuggestionType])

 ALTER TABLE [LazyLoadingDetail] ADD CONSTRAINT [LazyLoadingDetail_FLazyLoadingMaster_0] FOREIGN KEY ([LazyLoadingMaster]) REFERENCES [LazyLoadingMaster]
CREATE INDEX LazyLoadingDetail_ILazyLoadingMaster on [LazyLoadingDetail] ([LazyLoadingMaster])

 ALTER TABLE [Vote] ADD CONSTRAINT [Vote_FApplicationUser_0] FOREIGN KEY ([ApplicationUser]) REFERENCES [ApplicationUser]
CREATE INDEX Vote_IApplicationUser on [Vote] ([ApplicationUser])

 ALTER TABLE [Vote] ADD CONSTRAINT [Vote_FSuggestion_0] FOREIGN KEY ([Suggestion]) REFERENCES [Suggestion]
CREATE INDEX Vote_ISuggestion on [Vote] ([Suggestion])

 ALTER TABLE [Suggestion] ADD CONSTRAINT [Suggestion_FApplicationUser_0] FOREIGN KEY ([Author]) REFERENCES [ApplicationUser]
CREATE INDEX Suggestion_IAuthor on [Suggestion] ([Author])

 ALTER TABLE [Suggestion] ADD CONSTRAINT [Suggestion_FSuggestionType_0] FOREIGN KEY ([Type]) REFERENCES [SuggestionType]
CREATE INDEX Suggestion_IType on [Suggestion] ([Type])

 ALTER TABLE [Suggestion] ADD CONSTRAINT [Suggestion_FApplicationUser_1] FOREIGN KEY ([Editor1]) REFERENCES [ApplicationUser]
CREATE INDEX Suggestion_IEditor1 on [Suggestion] ([Editor1])

 ALTER TABLE [ChildLevel2] ADD CONSTRAINT [ChildLevel2_FApplicationUser_0] FOREIGN KEY ([Author]) REFERENCES [ApplicationUser]
CREATE INDEX ChildLevel2_IAuthor on [ChildLevel2] ([Author])

 ALTER TABLE [ChildLevel2] ADD CONSTRAINT [ChildLevel2_FSuggestionType_0] FOREIGN KEY ([Type]) REFERENCES [SuggestionType]
CREATE INDEX ChildLevel2_IType on [ChildLevel2] ([Type])

 ALTER TABLE [ChildLevel2] ADD CONSTRAINT [ChildLevel2_FApplicationUser_1] FOREIGN KEY ([Editor1]) REFERENCES [ApplicationUser]
CREATE INDEX ChildLevel2_IEditor1 on [ChildLevel2] ([Editor1])

 ALTER TABLE [ChildLevel1] ADD CONSTRAINT [ChildLevel1_FApplicationUser_0] FOREIGN KEY ([Author]) REFERENCES [ApplicationUser]
CREATE INDEX ChildLevel1_IAuthor on [ChildLevel1] ([Author])

 ALTER TABLE [ChildLevel1] ADD CONSTRAINT [ChildLevel1_FSuggestionType_0] FOREIGN KEY ([Type]) REFERENCES [SuggestionType]
CREATE INDEX ChildLevel1_IType on [ChildLevel1] ([Type])

 ALTER TABLE [ChildLevel1] ADD CONSTRAINT [ChildLevel1_FApplicationUser_1] FOREIGN KEY ([Editor1]) REFERENCES [ApplicationUser]
CREATE INDEX ChildLevel1_IEditor1 on [ChildLevel1] ([Editor1])

 ALTER TABLE [Comment] ADD CONSTRAINT [Comment_FApplicationUser_0] FOREIGN KEY ([Author]) REFERENCES [ApplicationUser]
CREATE INDEX Comment_IAuthor on [Comment] ([Author])

 ALTER TABLE [Comment] ADD CONSTRAINT [Comment_FSuggestion_0] FOREIGN KEY ([Suggestion]) REFERENCES [Suggestion]
CREATE INDEX Comment_ISuggestion on [Comment] ([Suggestion])

 ALTER TABLE [TogglerExampleDetail] ADD CONSTRAINT [TogglerExampleDetail_FTogglerExampleMaster_0] FOREIGN KEY ([TogglerExampleMaster]) REFERENCES [TogglerExampleMaster]
CREATE INDEX TogglerExampleDetail_ITogglerExampleMaster on [TogglerExampleDetail] ([TogglerExampleMaster])

 ALTER TABLE [TestPoly] ADD CONSTRAINT [TestPoly_FTestPolyChild_0] FOREIGN KEY ([Relation_m0]) REFERENCES [TestPolyChild]
CREATE INDEX TestPoly_IRelation_m0 on [TestPoly] ([Relation_m0])

 ALTER TABLE [TestPoly] ADD CONSTRAINT [TestPoly_FTestPolyAnotherChild_0] FOREIGN KEY ([Relation_m1]) REFERENCES [TestPolyAnotherChild]
CREATE INDEX TestPoly_IRelation_m1 on [TestPoly] ([Relation_m1])

 ALTER TABLE [Detail] ADD CONSTRAINT [Detail_FDetail_0] FOREIGN KEY ([ParentDetail]) REFERENCES [Detail]
CREATE INDEX Detail_IParentDetail on [Detail] ([ParentDetail])

 ALTER TABLE [Detail] ADD CONSTRAINT [Detail_FMaster_0] FOREIGN KEY ([Master]) REFERENCES [Master]
CREATE INDEX Detail_IMaster on [Detail] ([Master])

 ALTER TABLE [SuggestionFile] ADD CONSTRAINT [SuggestionFile_FSuggestion_0] FOREIGN KEY ([Suggestion]) REFERENCES [Suggestion]
CREATE INDEX SuggestionFile_ISuggestion on [SuggestionFile] ([Suggestion])

 ALTER TABLE [CommentVote] ADD CONSTRAINT [CommentVote_FApplicationUser_0] FOREIGN KEY ([ApplicationUser]) REFERENCES [ApplicationUser]
CREATE INDEX CommentVote_IApplicationUser on [CommentVote] ([ApplicationUser])

 ALTER TABLE [CommentVote] ADD CONSTRAINT [CommentVote_FComment_0] FOREIGN KEY ([Comment]) REFERENCES [Comment]
CREATE INDEX CommentVote_IComment on [CommentVote] ([Comment])

 ALTER TABLE [STORMWEBSEARCH] ADD CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERDETAIL] ADD CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERLOOKUP] ADD CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMLG] ADD CONSTRAINT [STORMLG_FSTORMAG_0] FOREIGN KEY ([Group_m0]) REFERENCES [STORMAG]

 ALTER TABLE [STORMLG] ADD CONSTRAINT [STORMLG_FSTORMAG_1] FOREIGN KEY ([User_m0]) REFERENCES [STORMAG]

 ALTER TABLE [STORMAuEntity] ADD CONSTRAINT [STORMAuEntity_FSTORMAG_0] FOREIGN KEY ([User_m0]) REFERENCES [STORMAG]

 ALTER TABLE [STORMAuEntity] ADD CONSTRAINT [STORMAuEntity_FSTORMAuObjType_0] FOREIGN KEY ([ObjectType_m0]) REFERENCES [STORMAuObjType]

 ALTER TABLE [STORMAuField] ADD CONSTRAINT [STORMAuField_FSTORMAuField_0] FOREIGN KEY ([MainChange_m0]) REFERENCES [STORMAuField]

 ALTER TABLE [STORMAuField] ADD CONSTRAINT [STORMAuField_FSTORMAuEntity_0] FOREIGN KEY ([AuditEntity_m0]) REFERENCES [STORMAuEntity]

