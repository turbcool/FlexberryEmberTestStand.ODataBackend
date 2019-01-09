



CREATE TABLE GraduateRecord (

 primaryKey UUID NOT NULL,

 GrFIO VARCHAR(255) NULL,

 GrYearGrad INT NULL,

 UniquelD VARCHAR(255) NULL,

 ObjectPK INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Localization (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE LookupDropdown (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NULL,

 MasterLookupDropdown UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE listLocalization (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 localeValue VARCHAR(255) NULL,

 Catalog UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE SuccessorSocialNetwork (

 primaryKey UUID NOT NULL,

 VK VARCHAR(255) NULL,

 Facebook VARCHAR(255) NULL,

 Twitter VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 EMail VARCHAR(255) NULL,

 Birthday TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE CatalogMaster (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE SuggestionType (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Name VARCHAR(255) NOT NULL,

 Moderated BOOLEAN NULL,

 Parent UUID NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Catalog (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 CatalogMaster UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE LocalizedSuggestionType (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Name VARCHAR(255) NOT NULL,

 Localization UUID NOT NULL,

 SuggestionType UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE LazyLoadingDetail (

 primaryKey UUID NOT NULL,

 DetailText VARCHAR(255) NULL,

 LazyLoadingMaster UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE MasterLookupDropdown (

 primaryKey UUID NOT NULL,

 Text VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE LazyLoadingMaster (

 primaryKey UUID NOT NULL,

 MasterText VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationUser (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Name VARCHAR(255) NOT NULL,

 EMail VARCHAR(255) NOT NULL,

 Phone1 VARCHAR(255) NULL,

 Phone2 VARCHAR(255) NULL,

 Phone3 VARCHAR(255) NULL,

 Activated BOOLEAN NULL,

 VK VARCHAR(255) NULL,

 Facebook VARCHAR(255) NULL,

 Twitter VARCHAR(255) NULL,

 Birthday TIMESTAMP(3) NULL,

 Gender VARCHAR(6) NULL,

 Vip BOOLEAN NULL,

 Karma DECIMAL NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE TestPolyAnotherChild (

 primaryKey UUID NOT NULL,

 ChildAnotherPole BOOLEAN NULL,

 Pole VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE SuccessorPhone (

 primaryKey UUID NOT NULL,

 Phone1 VARCHAR(255) NULL,

 Phone2 VARCHAR(255) NULL,

 Phone3 VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 EMail VARCHAR(255) NULL,

 Birthday TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Vote (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 VoteType VARCHAR(7) NULL,

 ApplicationUser UUID NOT NULL,

 Suggestion UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Master (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Suggestion (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Address VARCHAR(255) NULL,

 Text VARCHAR(255) NULL,

 Date TIMESTAMP(3) NULL,

 Votes BIGINT NULL,

 Moderated BOOLEAN NULL,

 Author UUID NOT NULL,

 Type UUID NOT NULL,

 Editor1 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE TogglerExampleMaster (

 primaryKey UUID NOT NULL,

 TogglerExampleMasterProperty VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ChildLevel2 (

 primaryKey UUID NOT NULL,

 TextChild2 VARCHAR(255) NULL,

 obj TEXT NULL,

 TextChild1 VARCHAR(255) NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Address VARCHAR(255) NULL,

 Text VARCHAR(255) NULL,

 Date TIMESTAMP(3) NULL,

 Votes BIGINT NULL,

 Moderated BOOLEAN NULL,

 Author UUID NOT NULL,

 Type UUID NOT NULL,

 Editor1 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ChildLevel1 (

 primaryKey UUID NOT NULL,

 TextChild1 VARCHAR(255) NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Address VARCHAR(255) NULL,

 Text VARCHAR(255) NULL,

 Date TIMESTAMP(3) NULL,

 Votes BIGINT NULL,

 Moderated BOOLEAN NULL,

 Author UUID NOT NULL,

 Type UUID NOT NULL,

 Editor1 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Parent (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NULL,

 EMail VARCHAR(255) NULL,

 Birthday TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Comment (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Text VARCHAR(255) NULL,

 Votes BIGINT NULL,

 Moderated BOOLEAN NULL,

 Author UUID NOT NULL,

 Suggestion UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE TogglerExampleDetail (

 primaryKey UUID NOT NULL,

 TogglerExampleDetailProperty VARCHAR(255) NULL,

 TogglerExampleMaster UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE TestPoly (

 primaryKey UUID NOT NULL,

 SelfPole VARCHAR(255) NULL,

 Relation_m0 UUID NULL,

 Relation_m1 UUID NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE StudentRecord (

 primaryKey UUID NOT NULL,

 SrFIO VARCHAR(255) NULL,

 SrCours INT NULL,

 UniquelD VARCHAR(255) NULL,

 ObjectPK INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE TestPolyChild (

 primaryKey UUID NOT NULL,

 ChildPole INT NULL,

 Pole VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Detail (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NULL,

 ParentDetail UUID NULL,

 Master UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE SuggestionFile (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 "Order" INT NULL,

 File TEXT NULL,

 Suggestion UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE CommentVote (

 primaryKey UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 VoteType VARCHAR(7) NULL,

 ApplicationUser UUID NOT NULL,

 Comment UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAuObjType (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAuEntity (

 primaryKey UUID NOT NULL,

 ObjectPrimaryKey VARCHAR(38) NOT NULL,

 OperationTime TIMESTAMP(3) NOT NULL,

 OperationType VARCHAR(100) NOT NULL,

 ExecutionResult VARCHAR(12) NOT NULL,

 Source VARCHAR(255) NOT NULL,

 SerializedField TEXT NULL,

 User_m0 UUID NOT NULL,

 ObjectType_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAuField (

 primaryKey UUID NOT NULL,

 Field VARCHAR(100) NOT NULL,

 OldValue TEXT NULL,

 NewValue TEXT NULL,

 MainChange_m0 UUID NULL,

 AuditEntity_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE LookupDropdown ADD CONSTRAINT FK8e00d2d9e2114b4aa595c2bc3ecd4ece FOREIGN KEY (MasterLookupDropdown) REFERENCES MasterLookupDropdown; 
CREATE INDEX Index4227a41d6941456d85e6951b7c3570e7 on LookupDropdown (MasterLookupDropdown); 

 ALTER TABLE listLocalization ADD CONSTRAINT FK89d3eb3bcf4748acb8737d1ed7059c13 FOREIGN KEY (Catalog) REFERENCES Catalog; 
CREATE INDEX Indexb415d792ec0f457688d1893e1ec83b8c on listLocalization (Catalog); 

 ALTER TABLE SuggestionType ADD CONSTRAINT FKbcba529216b64a948371e134c1706ca8 FOREIGN KEY (Parent) REFERENCES SuggestionType; 
CREATE INDEX Index529cb4c1f415472185d90fe15b768e24 on SuggestionType (Parent); 

 ALTER TABLE Catalog ADD CONSTRAINT FK26e50bebc10c40308d7323253c5cefe7 FOREIGN KEY (CatalogMaster) REFERENCES CatalogMaster; 
CREATE INDEX Index96fe1a0c84234b33877f1335b590f9e0 on Catalog (CatalogMaster); 

 ALTER TABLE LocalizedSuggestionType ADD CONSTRAINT FK4917c565830e40d1bb726d89728aa65c FOREIGN KEY (Localization) REFERENCES Localization; 
CREATE INDEX Indexe3a8b0db79bc47ef98f8c897facb224d on LocalizedSuggestionType (Localization); 

 ALTER TABLE LocalizedSuggestionType ADD CONSTRAINT FK0ab43d2d23c04e36b09c2f02e9386231 FOREIGN KEY (SuggestionType) REFERENCES SuggestionType; 
CREATE INDEX Index13e72bdaac764933b145481cd261cd30 on LocalizedSuggestionType (SuggestionType); 

 ALTER TABLE LazyLoadingDetail ADD CONSTRAINT FKeb06dbac4a674c04bf37094c4ca7d711 FOREIGN KEY (LazyLoadingMaster) REFERENCES LazyLoadingMaster; 
CREATE INDEX Index98bb85eda7474354b371aaddcbef334a on LazyLoadingDetail (LazyLoadingMaster); 

 ALTER TABLE Vote ADD CONSTRAINT FKf9f5f8fe0dec4e9da0c8a2944a365309 FOREIGN KEY (ApplicationUser) REFERENCES ApplicationUser; 
CREATE INDEX Index5c546810a8b3443abda23a9bd64428d6 on Vote (ApplicationUser); 

 ALTER TABLE Vote ADD CONSTRAINT FK9c3120d0c9b54cf5b115c824da342e96 FOREIGN KEY (Suggestion) REFERENCES Suggestion; 
CREATE INDEX Index0738ee4ef25846ba86d71a7455ec631f on Vote (Suggestion); 

 ALTER TABLE Suggestion ADD CONSTRAINT FK3290b7ca4bdf429faec350b6f375451a FOREIGN KEY (Author) REFERENCES ApplicationUser; 
CREATE INDEX Indexc4cf6a2416fa4e0ba04c33d676181f40 on Suggestion (Author); 

 ALTER TABLE Suggestion ADD CONSTRAINT FK4e84d8c2a45748c4809fba78bb51b748 FOREIGN KEY (Type) REFERENCES SuggestionType; 
CREATE INDEX Index6455c84ef87544f0aabbf2bef7e496ab on Suggestion (Type); 

 ALTER TABLE Suggestion ADD CONSTRAINT FK8ba39c5036cd420bbfa7120889c10a53 FOREIGN KEY (Editor1) REFERENCES ApplicationUser; 
CREATE INDEX Indexcf53f4a0e1ec46af982d6af266a60ddd on Suggestion (Editor1); 

 ALTER TABLE ChildLevel2 ADD CONSTRAINT FK818e3a69c37545b4ad6ae4baa79a073a FOREIGN KEY (Author) REFERENCES ApplicationUser; 
CREATE INDEX Indexdf74d2d3e9374bc4a99dcbb60b594b1f on ChildLevel2 (Author); 

 ALTER TABLE ChildLevel2 ADD CONSTRAINT FK27abc384e091408e8444e31e2aad3ed5 FOREIGN KEY (Type) REFERENCES SuggestionType; 
CREATE INDEX Index5b217efb2486404481de849003c5b56c on ChildLevel2 (Type); 

 ALTER TABLE ChildLevel2 ADD CONSTRAINT FK8b5807f15a2e481c93f55ba749f19349 FOREIGN KEY (Editor1) REFERENCES ApplicationUser; 
CREATE INDEX Index069cb3c9cb534f3dbd1dd3ce851dfb26 on ChildLevel2 (Editor1); 

 ALTER TABLE ChildLevel1 ADD CONSTRAINT FK5eaffb8eb86e4b85b431a481aeecd122 FOREIGN KEY (Author) REFERENCES ApplicationUser; 
CREATE INDEX Indexf66a9a8fb372449a9219f3cf8db56dd6 on ChildLevel1 (Author); 

 ALTER TABLE ChildLevel1 ADD CONSTRAINT FKefb7c81ef6344cdab4f532d3d4d6bb7d FOREIGN KEY (Type) REFERENCES SuggestionType; 
CREATE INDEX Index64611643723248eeb052a5cbfcc66b2a on ChildLevel1 (Type); 

 ALTER TABLE ChildLevel1 ADD CONSTRAINT FKc26325436734450baf749758218fdce4 FOREIGN KEY (Editor1) REFERENCES ApplicationUser; 
CREATE INDEX Indexf1ed83d646804c1fadf59df42fbf63c4 on ChildLevel1 (Editor1); 

 ALTER TABLE Comment ADD CONSTRAINT FK2aa280d22ac145899ce92e6ec51d0d75 FOREIGN KEY (Author) REFERENCES ApplicationUser; 
CREATE INDEX Indexd1352314079640d4947526412e50fcc1 on Comment (Author); 

 ALTER TABLE Comment ADD CONSTRAINT FK9323e4508ba84491aeaca8f0e14c15b0 FOREIGN KEY (Suggestion) REFERENCES Suggestion; 
CREATE INDEX Index6d289538b014409da7c672bdd90c3896 on Comment (Suggestion); 

 ALTER TABLE TogglerExampleDetail ADD CONSTRAINT FK047b8c1ccad449c4b972c6fecb3fc9f3 FOREIGN KEY (TogglerExampleMaster) REFERENCES TogglerExampleMaster; 
CREATE INDEX Index1807a837a9e540cbbf2b4772b6a2db69 on TogglerExampleDetail (TogglerExampleMaster); 

 ALTER TABLE TestPoly ADD CONSTRAINT FKf2e6b613450545a5afe90cfdd4c0bf05 FOREIGN KEY (Relation_m0) REFERENCES TestPolyChild; 
CREATE INDEX Index21120e0c070648c5abda7aeffd00f622 on TestPoly (Relation_m0); 

 ALTER TABLE TestPoly ADD CONSTRAINT FKac5020dc84134044929a1b46449d57b1 FOREIGN KEY (Relation_m1) REFERENCES TestPolyAnotherChild; 
CREATE INDEX Index002ce0822ee04a55bd12c0ea9f99310d on TestPoly (Relation_m1); 

 ALTER TABLE Detail ADD CONSTRAINT FK3b8f3c5d61ac4ad5997192d9ec7cdb14 FOREIGN KEY (ParentDetail) REFERENCES Detail; 
CREATE INDEX Index0ed4baf2624b47418a88d7b7585b0d06 on Detail (ParentDetail); 

 ALTER TABLE Detail ADD CONSTRAINT FK0ce2b963b5d54561a1bba6f741c375c1 FOREIGN KEY (Master) REFERENCES Master; 
CREATE INDEX Indexee48cc0b26e14fc0aca632632a8dde68 on Detail (Master); 

 ALTER TABLE SuggestionFile ADD CONSTRAINT FK5e26dad741f541b8aa584033e9c86472 FOREIGN KEY (Suggestion) REFERENCES Suggestion; 
CREATE INDEX Indexb72af60f8fef4d0fa347c1557edcd399 on SuggestionFile (Suggestion); 

 ALTER TABLE CommentVote ADD CONSTRAINT FK30b0931219834dd2b12b89eb4337f6e2 FOREIGN KEY (ApplicationUser) REFERENCES ApplicationUser; 
CREATE INDEX Index34c3f083e873476d8c457ebb08b9cf05 on CommentVote (ApplicationUser); 

 ALTER TABLE CommentVote ADD CONSTRAINT FK2a31336ce89b45c9983eff10a8b4308a FOREIGN KEY (Comment) REFERENCES Comment; 
CREATE INDEX Index4c37373baa854bb3b653f859e038b17f on CommentVote (Comment); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK8f6672467b384aa199e33c7342e60444 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKf9ab0aa92a4c4574bd1290bf3dfcb2ad FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKd0e701768a5b4ea882025f431f8a8b94 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMAuEntity ADD CONSTRAINT FKcdc9510e684445409749ff19e2b5ae9b FOREIGN KEY (ObjectType_m0) REFERENCES STORMAuObjType; 

 ALTER TABLE STORMAuField ADD CONSTRAINT FKa22d602e4fc04abb97fcb87997e9b3b5 FOREIGN KEY (MainChange_m0) REFERENCES STORMAuField; 

 ALTER TABLE STORMAuField ADD CONSTRAINT FK40ec5b2209f64ba3b528f0d75b3a54b7 FOREIGN KEY (AuditEntity_m0) REFERENCES STORMAuEntity; 

