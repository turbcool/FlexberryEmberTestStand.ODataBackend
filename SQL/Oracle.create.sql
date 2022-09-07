



CREATE TABLE "LocalizedSuggestionType"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Name" NVARCHAR2(255) NOT NULL,

	"Localization" RAW(16) NOT NULL,

	"SuggestionType" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Sotrudnik"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NULL,

	"Familiia" NVARCHAR2(255) NULL,

	"DataRozhdeniia" DATE NULL,

	"Departament_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "VidDepartamenta"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "SuccessorPhone"
(

	"primaryKey" RAW(16) NOT NULL,

	"Phone1" NVARCHAR2(255) NULL,

	"Phone2" NVARCHAR2(255) NULL,

	"Phone3" NVARCHAR2(255) NULL,

	"Name" NVARCHAR2(255) NULL,

	"EMail" NVARCHAR2(255) NULL,

	"Birthday" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationUser"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Name" NVARCHAR2(255) NOT NULL,

	"EMail" NVARCHAR2(255) NOT NULL,

	"Phone1" NVARCHAR2(255) NULL,

	"Phone2" NVARCHAR2(255) NULL,

	"Phone3" NVARCHAR2(255) NULL,

	"Activated" NUMBER(1) NULL,

	"VK" NVARCHAR2(255) NULL,

	"Facebook" NVARCHAR2(255) NULL,

	"Twitter" NVARCHAR2(255) NULL,

	"Birthday" DATE NULL,

	"Gender" NVARCHAR2(6) NULL,

	"Vip" NUMBER(1) NULL,

	"Karma" NUMBER(38) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "MasterLookupDropdown"
(

	"primaryKey" RAW(16) NOT NULL,

	"Text" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ChildLevel2"
(

	"primaryKey" RAW(16) NOT NULL,

	"TextChild2" NVARCHAR2(255) NULL,

	"obj" NCLOB NULL,

	"TextChild1" NVARCHAR2(255) NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Address" NVARCHAR2(255) NULL,

	"Text" NVARCHAR2(255) NULL,

	"Date" DATE NOT NULL,

	"Votes" NUMBER(20) NULL,

	"Moderated" NUMBER(1) NULL,

	"Type" RAW(16) NOT NULL,

	"Author" RAW(16) NOT NULL,

	"Editor1" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Suggestion"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Address" NVARCHAR2(255) NULL,

	"Text" NVARCHAR2(255) NULL,

	"Date" DATE NOT NULL,

	"Votes" NUMBER(20) NULL,

	"Moderated" NUMBER(1) NULL,

	"Type" RAW(16) NOT NULL,

	"Author" RAW(16) NOT NULL,

	"Editor1" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "CatalogMaster"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Vote"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"VoteType" NVARCHAR2(7) NULL,

	"ApplicationUser" RAW(16) NOT NULL,

	"Suggestion" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "SuccessorSocialNetwork"
(

	"primaryKey" RAW(16) NOT NULL,

	"VK" NVARCHAR2(255) NULL,

	"Facebook" NVARCHAR2(255) NULL,

	"Twitter" NVARCHAR2(255) NULL,

	"Name" NVARCHAR2(255) NULL,

	"EMail" NVARCHAR2(255) NULL,

	"Birthday" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "TestPolyAnotherChild"
(

	"primaryKey" RAW(16) NOT NULL,

	"ChildAnotherPole" NUMBER(1) NULL,

	"Pole" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "LookupDropdown"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NULL,

	"MasterLookupDropdown" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ChildLevel1"
(

	"primaryKey" RAW(16) NOT NULL,

	"TextChild1" NVARCHAR2(255) NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Address" NVARCHAR2(255) NULL,

	"Text" NVARCHAR2(255) NULL,

	"Date" DATE NOT NULL,

	"Votes" NUMBER(20) NULL,

	"Moderated" NUMBER(1) NULL,

	"Type" RAW(16) NOT NULL,

	"Author" RAW(16) NOT NULL,

	"Editor1" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "TestPolyChild"
(

	"primaryKey" RAW(16) NOT NULL,

	"ChildPole" NUMBER(10) NULL,

	"Pole" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Detail"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NULL,

	"ParentDetail" RAW(16) NULL,

	"Master" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "GraduateRecord"
(

	"primaryKey" RAW(16) NOT NULL,

	"GrFIO" NVARCHAR2(255) NULL,

	"GrYearGrad" NUMBER(10) NULL,

	"UniquelD" NVARCHAR2(255) NULL,

	"ObjectPK" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Localization"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Name" NVARCHAR2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "LazyLoadingMaster"
(

	"primaryKey" RAW(16) NOT NULL,

	"MasterText" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Parent"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NULL,

	"EMail" NVARCHAR2(255) NULL,

	"Birthday" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "TestPoly"
(

	"primaryKey" RAW(16) NOT NULL,

	"SelfPole" NVARCHAR2(255) NULL,

	"Relation_m0" RAW(16) NULL,

	"Relation_m1" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "CommentVote"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"VoteType" NVARCHAR2(7) NULL,

	"ApplicationUser" RAW(16) NOT NULL,

	"Comment" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Master"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "LazyLoadingDetail"
(

	"primaryKey" RAW(16) NOT NULL,

	"DetailText" NVARCHAR2(255) NULL,

	"LazyLoadingMaster" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "TogglerExampleDetail"
(

	"primaryKey" RAW(16) NOT NULL,

	"TogglerExampleDetailProperty" NVARCHAR2(255) NULL,

	"TogglerExampleMaster" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Departament"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NULL,

	"Vid_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Comment"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Text" NVARCHAR2(255) NULL,

	"Votes" NUMBER(20) NULL,

	"Moderated" NUMBER(1) NULL,

	"Author" RAW(16) NOT NULL,

	"Suggestion" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Catalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"CatalogMaster" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "StudentRecord"
(

	"primaryKey" RAW(16) NOT NULL,

	"SrFIO" NVARCHAR2(255) NULL,

	"SrCours" NUMBER(10) NULL,

	"UniquelD" NVARCHAR2(255) NULL,

	"ObjectPK" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "SuggestionFile"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Order" NUMBER(10) NULL,

	"File" NCLOB NULL,

	"Suggestion" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "listLocalization"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"localeValue" NVARCHAR2(255) NULL,

	"Catalog" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "TogglerExampleMaster"
(

	"primaryKey" RAW(16) NOT NULL,

	"TogglerExampleMasterProperty" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "SuggestionType"
(

	"primaryKey" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" NVARCHAR2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" NVARCHAR2(255) NULL,

	"Name" NVARCHAR2(255) NOT NULL,

	"Moderated" NUMBER(1) NULL,

	"Parent" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMNETLOCKDATA"
(

	"LockKey" NVARCHAR2(300) NOT NULL,

	"UserName" NVARCHAR2(300) NOT NULL,

	"LockDate" DATE NULL,

	 PRIMARY KEY ("LockKey")
) ;


CREATE TABLE "STORMSETTINGS"
(

	"primaryKey" RAW(16) NOT NULL,

	"Module" nvarchar2(1000) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"User" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAdvLimit"
(

	"primaryKey" RAW(16) NOT NULL,

	"User" nvarchar2(255) NULL,

	"Published" NUMBER(1) NULL,

	"Module" nvarchar2(255) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"HotKeyData" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERSETTING"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMWEBSEARCH"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"Order" NUMBER(10) NOT NULL,

	"PresentView" nvarchar2(255) NOT NULL,

	"DetailedView" nvarchar2(255) NOT NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERDETAIL"
(

	"primaryKey" RAW(16) NOT NULL,

	"Caption" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	"ConnectMasterProp" nvarchar2(255) NOT NULL,

	"OwnerConnectProp" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERLOOKUP"
(

	"primaryKey" RAW(16) NOT NULL,

	"DataObjectType" nvarchar2(255) NOT NULL,

	"Container" nvarchar2(255) NULL,

	"ContainerTag" nvarchar2(255) NULL,

	"FieldsToView" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "UserSetting"
(

	"primaryKey" RAW(16) NOT NULL,

	"AppName" nvarchar2(256) NULL,

	"UserName" nvarchar2(512) NULL,

	"UserGuid" RAW(16) NULL,

	"ModuleName" nvarchar2(1024) NULL,

	"ModuleGuid" RAW(16) NULL,

	"SettName" nvarchar2(256) NULL,

	"SettGuid" RAW(16) NULL,

	"SettLastAccessTime" DATE NULL,

	"StrVal" nvarchar2(256) NULL,

	"TxtVal" CLOB NULL,

	"IntVal" NUMBER(10) NULL,

	"BoolVal" NUMBER(1) NULL,

	"GuidVal" RAW(16) NULL,

	"DecimalVal" NUMBER(20,10) NULL,

	"DateTimeVal" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"Category" nvarchar2(64) NULL,

	"EventId" NUMBER(10) NULL,

	"Priority" NUMBER(10) NULL,

	"Severity" nvarchar2(32) NULL,

	"Title" nvarchar2(256) NULL,

	"Timestamp" DATE NULL,

	"MachineName" nvarchar2(32) NULL,

	"AppDomainName" nvarchar2(512) NULL,

	"ProcessId" nvarchar2(256) NULL,

	"ProcessName" nvarchar2(512) NULL,

	"ThreadName" nvarchar2(512) NULL,

	"Win32ThreadId" nvarchar2(128) NULL,

	"Message" nvarchar2(2000) NULL,

	"FormattedMessage" nvarchar2(2000) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAG"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(80) NOT NULL,

	"Login" nvarchar2(50) NULL,

	"Pwd" nvarchar2(50) NULL,

	"IsUser" NUMBER(1) NOT NULL,

	"IsGroup" NUMBER(1) NOT NULL,

	"IsRole" NUMBER(1) NOT NULL,

	"ConnString" nvarchar2(255) NULL,

	"Enabled" NUMBER(1) NULL,

	"Email" nvarchar2(80) NULL,

	"Comment" CLOB NULL,

	"CreateTime" DATE NULL,

	"Creator" nvarchar2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMLG"
(

	"primaryKey" RAW(16) NOT NULL,

	"Group_m0" RAW(16) NOT NULL,

	"User_m0" RAW(16) NOT NULL,

	"CreateTime" DATE NULL,

	"Creator" nvarchar2(255) NULL,

	"EditTime" DATE NULL,

	"Editor" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAuObjType"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAuEntity"
(

	"primaryKey" RAW(16) NOT NULL,

	"ObjectPrimaryKey" nvarchar2(38) NOT NULL,

	"OperationTime" DATE NOT NULL,

	"OperationType" nvarchar2(100) NOT NULL,

	"ExecutionResult" nvarchar2(12) NOT NULL,

	"Source" nvarchar2(255) NOT NULL,

	"SerializedField" nvarchar2(2000) NULL,

	"User_m0" RAW(16) NOT NULL,

	"ObjectType_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAuField"
(

	"primaryKey" RAW(16) NOT NULL,

	"Field" nvarchar2(100) NOT NULL,

	"OldValue" nvarchar2(2000) NULL,

	"NewValue" nvarchar2(2000) NULL,

	"MainChange_m0" RAW(16) NULL,

	"AuditEntity_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;



ALTER TABLE "LocalizedSuggestionType"
	ADD CONSTRAINT "LocalizedSuggestionType_F_6282" FOREIGN KEY ("Localization") REFERENCES "Localization" ("primaryKey");

CREATE INDEX "LocalizedSuggestionType_I_3294" on "LocalizedSuggestionType" ("Localization");

ALTER TABLE "LocalizedSuggestionType"
	ADD CONSTRAINT "LocalizedSuggestionType_FS_265" FOREIGN KEY ("SuggestionType") REFERENCES "SuggestionType" ("primaryKey");

CREATE INDEX "LocalizedSuggestionType_I_1306" on "LocalizedSuggestionType" ("SuggestionType");

ALTER TABLE "Sotrudnik"
	ADD CONSTRAINT "Sotrudnik_FDepartament_0" FOREIGN KEY ("Departament_m0") REFERENCES "Departament" ("primaryKey");

CREATE INDEX "Sotrudnik_IDepartament_m0" on "Sotrudnik" ("Departament_m0");

ALTER TABLE "ChildLevel2"
	ADD CONSTRAINT "ChildLevel2_FSuggestionType_0" FOREIGN KEY ("Type") REFERENCES "SuggestionType" ("primaryKey");

CREATE INDEX "ChildLevel2_IType" on "ChildLevel2" ("Type");

ALTER TABLE "ChildLevel2"
	ADD CONSTRAINT "ChildLevel2_FApplicationUser_0" FOREIGN KEY ("Author") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "ChildLevel2_IAuthor" on "ChildLevel2" ("Author");

ALTER TABLE "ChildLevel2"
	ADD CONSTRAINT "ChildLevel2_FApplicationUser_1" FOREIGN KEY ("Editor1") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "ChildLevel2_IEditor1" on "ChildLevel2" ("Editor1");

ALTER TABLE "Suggestion"
	ADD CONSTRAINT "Suggestion_FSuggestionType_0" FOREIGN KEY ("Type") REFERENCES "SuggestionType" ("primaryKey");

CREATE INDEX "Suggestion_IType" on "Suggestion" ("Type");

ALTER TABLE "Suggestion"
	ADD CONSTRAINT "Suggestion_FApplicationUser_0" FOREIGN KEY ("Author") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "Suggestion_IAuthor" on "Suggestion" ("Author");

ALTER TABLE "Suggestion"
	ADD CONSTRAINT "Suggestion_FApplicationUser_1" FOREIGN KEY ("Editor1") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "Suggestion_IEditor1" on "Suggestion" ("Editor1");

ALTER TABLE "Vote"
	ADD CONSTRAINT "Vote_FApplicationUser_0" FOREIGN KEY ("ApplicationUser") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "Vote_IApplicationUser" on "Vote" ("ApplicationUser");

ALTER TABLE "Vote"
	ADD CONSTRAINT "Vote_FSuggestion_0" FOREIGN KEY ("Suggestion") REFERENCES "Suggestion" ("primaryKey");

CREATE INDEX "Vote_ISuggestion" on "Vote" ("Suggestion");

ALTER TABLE "LookupDropdown"
	ADD CONSTRAINT "LookupDropdown_FMasterLoo_6203" FOREIGN KEY ("MasterLookupDropdown") REFERENCES "MasterLookupDropdown" ("primaryKey");

CREATE INDEX "LookupDropdown_IMasterLoo_4115" on "LookupDropdown" ("MasterLookupDropdown");

ALTER TABLE "ChildLevel1"
	ADD CONSTRAINT "ChildLevel1_FSuggestionType_0" FOREIGN KEY ("Type") REFERENCES "SuggestionType" ("primaryKey");

CREATE INDEX "ChildLevel1_IType" on "ChildLevel1" ("Type");

ALTER TABLE "ChildLevel1"
	ADD CONSTRAINT "ChildLevel1_FApplicationUser_0" FOREIGN KEY ("Author") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "ChildLevel1_IAuthor" on "ChildLevel1" ("Author");

ALTER TABLE "ChildLevel1"
	ADD CONSTRAINT "ChildLevel1_FApplicationUser_1" FOREIGN KEY ("Editor1") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "ChildLevel1_IEditor1" on "ChildLevel1" ("Editor1");

ALTER TABLE "Detail"
	ADD CONSTRAINT "Detail_FDetail_0" FOREIGN KEY ("ParentDetail") REFERENCES "Detail" ("primaryKey");

CREATE INDEX "Detail_IParentDetail" on "Detail" ("ParentDetail");

ALTER TABLE "Detail"
	ADD CONSTRAINT "Detail_FMaster_0" FOREIGN KEY ("Master") REFERENCES "Master" ("primaryKey");

CREATE INDEX "Detail_IMaster" on "Detail" ("Master");

ALTER TABLE "TestPoly"
	ADD CONSTRAINT "TestPoly_FTestPolyChild_0" FOREIGN KEY ("Relation_m0") REFERENCES "TestPolyChild" ("primaryKey");

CREATE INDEX "TestPoly_IRelation_m0" on "TestPoly" ("Relation_m0");

ALTER TABLE "TestPoly"
	ADD CONSTRAINT "TestPoly_FTestPolyAnother_1551" FOREIGN KEY ("Relation_m1") REFERENCES "TestPolyAnotherChild" ("primaryKey");

CREATE INDEX "TestPoly_IRelation_m1" on "TestPoly" ("Relation_m1");

ALTER TABLE "CommentVote"
	ADD CONSTRAINT "CommentVote_FApplicationUser_0" FOREIGN KEY ("ApplicationUser") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "CommentVote_IApplicationUser" on "CommentVote" ("ApplicationUser");

ALTER TABLE "CommentVote"
	ADD CONSTRAINT "CommentVote_FComment_0" FOREIGN KEY ("Comment") REFERENCES "Comment" ("primaryKey");

CREATE INDEX "CommentVote_IComment" on "CommentVote" ("Comment");

ALTER TABLE "LazyLoadingDetail"
	ADD CONSTRAINT "LazyLoadingDetail_FLazyLoa_322" FOREIGN KEY ("LazyLoadingMaster") REFERENCES "LazyLoadingMaster" ("primaryKey");

CREATE INDEX "LazyLoadingDetail_ILazyLo_7194" on "LazyLoadingDetail" ("LazyLoadingMaster");

ALTER TABLE "TogglerExampleDetail"
	ADD CONSTRAINT "TogglerExampleDetail_FTog_3043" FOREIGN KEY ("TogglerExampleMaster") REFERENCES "TogglerExampleMaster" ("primaryKey");

CREATE INDEX "TogglerExampleDetail_ITogg_137" on "TogglerExampleDetail" ("TogglerExampleMaster");

ALTER TABLE "Departament"
	ADD CONSTRAINT "Departament_FVidDepartamenta_0" FOREIGN KEY ("Vid_m0") REFERENCES "VidDepartamenta" ("primaryKey");

CREATE INDEX "Departament_IVid_m0" on "Departament" ("Vid_m0");

ALTER TABLE "Comment"
	ADD CONSTRAINT "Comment_FApplicationUser_0" FOREIGN KEY ("Author") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "Comment_IAuthor" on "Comment" ("Author");

ALTER TABLE "Comment"
	ADD CONSTRAINT "Comment_FSuggestion_0" FOREIGN KEY ("Suggestion") REFERENCES "Suggestion" ("primaryKey");

CREATE INDEX "Comment_ISuggestion" on "Comment" ("Suggestion");

ALTER TABLE "Catalog"
	ADD CONSTRAINT "Catalog_FCatalogMaster_0" FOREIGN KEY ("CatalogMaster") REFERENCES "CatalogMaster" ("primaryKey");

CREATE INDEX "Catalog_ICatalogMaster" on "Catalog" ("CatalogMaster");

ALTER TABLE "SuggestionFile"
	ADD CONSTRAINT "SuggestionFile_FSuggestion_0" FOREIGN KEY ("Suggestion") REFERENCES "Suggestion" ("primaryKey");

CREATE INDEX "SuggestionFile_ISuggestion" on "SuggestionFile" ("Suggestion");

ALTER TABLE "listLocalization"
	ADD CONSTRAINT "listLocalization_FCatalog_0" FOREIGN KEY ("Catalog") REFERENCES "Catalog" ("primaryKey");

CREATE INDEX "listLocalization_ICatalog" on "listLocalization" ("Catalog");

ALTER TABLE "SuggestionType"
	ADD CONSTRAINT "SuggestionType_FSuggestio_9268" FOREIGN KEY ("Parent") REFERENCES "SuggestionType" ("primaryKey");

CREATE INDEX "SuggestionType_IParent" on "SuggestionType" ("Parent");

ALTER TABLE "STORMWEBSEARCH"
	ADD CONSTRAINT "STORMWEBSEARCH_FSTORMFILT_6521" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERDETAIL"
	ADD CONSTRAINT "STORMFILTERDETAIL_FSTORMF_2900" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERLOOKUP"
	ADD CONSTRAINT "STORMFILTERLOOKUP_FSTORMF_1583" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMLG"
	ADD CONSTRAINT "STORMLG_FSTORMAG_0" FOREIGN KEY ("Group_m0") REFERENCES "STORMAG" ("primaryKey");

ALTER TABLE "STORMLG"
	ADD CONSTRAINT "STORMLG_FSTORMAG_1" FOREIGN KEY ("User_m0") REFERENCES "STORMAG" ("primaryKey");

ALTER TABLE "STORMAuEntity"
	ADD CONSTRAINT "STORMAuEntity_FSTORMAG_0" FOREIGN KEY ("User_m0") REFERENCES "STORMAG" ("primaryKey");

ALTER TABLE "STORMAuEntity"
	ADD CONSTRAINT "STORMAuEntity_FSTORMAuObj_3287" FOREIGN KEY ("ObjectType_m0") REFERENCES "STORMAuObjType" ("primaryKey");

ALTER TABLE "STORMAuField"
	ADD CONSTRAINT "STORMAuField_FSTORMAuField_0" FOREIGN KEY ("MainChange_m0") REFERENCES "STORMAuField" ("primaryKey");

ALTER TABLE "STORMAuField"
	ADD CONSTRAINT "STORMAuField_FSTORMAuEntity_0" FOREIGN KEY ("AuditEntity_m0") REFERENCES "STORMAuEntity" ("primaryKey");


