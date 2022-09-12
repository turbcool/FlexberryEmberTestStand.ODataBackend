namespace EmberFlexberryDummy
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;
    using ICSSoft.Services;
    using ICSSoft.STORMNET;
    using ICSSoft.STORMNET.Business;
    using ICSSoft.STORMNET.Security;
    using IIS.Caseberry.Logging.Objects;
    using Microsoft.AspNet.OData.Extensions;
    using Microsoft.AspNetCore.Builder;
    using Microsoft.AspNetCore.Hosting;
    using Microsoft.Extensions.Configuration;
    using Microsoft.Extensions.DependencyInjection;
    using NewPlatform.Flexberry.ORM.ODataService.Extensions;
    using NewPlatform.Flexberry.ORM.ODataService.Files;
    using NewPlatform.Flexberry.ORM.ODataService.Functions;
    using NewPlatform.Flexberry.ORM.ODataService.Model;
    using NewPlatform.Flexberry.ORM.ODataService.WebApi.Extensions;
    using NewPlatform.Flexberry.ORM.ODataServiceCore.Common.Exceptions;
    using NewPlatform.Flexberry.Services;
    using Unity;

    /// <summary>
    /// Класс настройки запуска приложения.
    /// </summary>
    public class Startup
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Startup" /> class.
        /// </summary>
        /// <param name="configuration">An application configuration properties.</param>
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        /// <summary>
        /// An application configuration properties.
        /// </summary>
        public IConfiguration Configuration { get; }

        /// <summary>
        /// Configurate application services.
        /// </summary>
        /// <remarks>
        /// This method gets called by the runtime. Use this method to add services to the container.
        /// </remarks>
        /// <param name="services">An collection of application services.</param>
        public void ConfigureServices(IServiceCollection services)
        {
            string connStr = Configuration["DefConnStr"];

            services.AddMvcCore(
                    options =>
                    {
                        options.Filters.Add<CustomExceptionFilter>();
                        options.EnableEndpointRouting = false;
                    })
                .AddFormatterMappings();

            services.AddOData();

            services.AddControllers().AddControllersAsServices();

            services.AddCors();
            services
                .AddHealthChecks()
                .AddNpgSql(connStr);
        }

        /// <summary>
        /// Configurate the HTTP request pipeline.
        /// </summary>
        /// <remarks>
        /// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        /// </remarks>
        /// <param name="app">An application configurator.</param>
        /// <param name="env">Information about web hosting environment.</param>
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            LogService.LogInfo("Инициирован запуск приложения.");

            app.UseDefaultFiles();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseCors(builder => builder.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod());

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
                endpoints.MapHealthChecks("/health");
            });

            app.UseODataService(builder =>
            {
                builder.MapFileRoute();

                var assemblies = new[]
                {
                    typeof(ObjectsMarker).Assembly,
                    typeof(ApplicationLog).Assembly,
                    typeof(UserSetting).Assembly,
                    typeof(Lock).Assembly,
                };
                var modelBuilder = new DefaultDataObjectEdmModelBuilder(assemblies, true);

                var token = builder.MapDataObjectRoute(modelBuilder);

                // User functions
                token.Functions.Register(new Func<QueryParameters, string>(Test));
                token.Functions.Register(new Func<string, bool>(ClearLogRecords));
                token.Functions.Register(new Func<QueryParameters, IEnumerable<Sotrudnik>>(GetMastersForTest));
                token.Functions.RegisterAction(new Func<QueryParameters, string, string, object>(DeleteAllSelect));

                token.Functions.RegisterAction(new Func<IEnumerable<ApplicationUser>>(ODataTestTypedResult));
                token.Functions.RegisterAction(new Func<IEnumerable<DataObject>>(ODataTestNotTypedResult));
                token.Functions.RegisterAction(new Func<IEnumerable<DataObject>>(ODataTestMultyTypedResult));
                token.Functions.RegisterAction(new Func<IEnumerable<DataObject>>(ODataTestMultyTypedWithLinksResult));

                // Event handlers
                token.Events.CallbackAfterCreate = CallbackAfterCreate;
                token.Events.CallbackBeforeUpdate = CallBackBeforeUpdate;
            });
        }

        /// <summary>
        /// Configurate application container.
        /// </summary>
        /// <param name="container">Container to configure.</param>
        public void ConfigureContainer(IUnityContainer container)
        {
            if (container == null)
            {
                throw new ArgumentNullException(nameof(container));
            }

            // FYI: сервисы, в т.ч. контроллеры, создаются из дочернего контейнера.
            while (container.Parent != null)
            {
                container = container.Parent;
            }

            // FYI: сервис данных ходит в контейнер UnityFactory.
            container.RegisterInstance(Configuration);

            RegisterDataObjectFileAccessor(container);
            RegisterORM(container);
        }

        /// <summary>
        /// Register implementation of <see cref="IDataObjectFileAccessor"/>.
        /// </summary>
        /// <param name="container">Container to register at.</param>
        private void RegisterDataObjectFileAccessor(IUnityContainer container)
        {
            const string fileControllerPath = "api/file";
            string baseUriRaw = Configuration["BackendRoot"];
            if (string.IsNullOrEmpty(baseUriRaw))
            {
                throw new System.Configuration.ConfigurationErrorsException("BackendRoot is not specified in Configuration or enviromnent variables.");
            }

            Console.WriteLine($"baseUriRaw is {baseUriRaw}");
            var baseUri = new Uri(baseUriRaw);
            string uploadPath = Configuration["UploadUrl"];
            container.RegisterSingleton<IDataObjectFileAccessor, DefaultDataObjectFileAccessor>(
                Invoke.Constructor(
                    baseUri,
                    fileControllerPath,
                    uploadPath,
                    null));
        }

        /// <summary>
        /// Register ORM implementations.
        /// </summary>
        /// <param name="container">Container to register at.</param>
        private void RegisterORM(IUnityContainer container)
        {
            string connStr = Configuration["DefConnStr"];
            if (string.IsNullOrEmpty(connStr))
            {
                throw new System.Configuration.ConfigurationErrorsException("DefConnStr is not specified in Configuration or enviromnent variables.");
            }

            container.RegisterSingleton<ISecurityManager, EmptySecurityManager>();
            container.RegisterSingleton<IDataService, PostgresDataService>(
                Inject.Property(nameof(PostgresDataService.CustomizationString), connStr));
        }

        private static IEnumerable<Sotrudnik> GetMastersForTest(QueryParameters queryParameters)
        {
            SQLDataService dataService = DataServiceProvider.DataService as SQLDataService;

            ICSSoft.STORMNET.View view = new ICSSoft.STORMNET.View();
            view.DefineClassType = typeof(Sotrudnik);
            view.AddProperties(Information.ExtractPropertyPath<Sotrudnik>(x => x.Name));
            view.AddProperties(Information.ExtractPropertyPath<Sotrudnik>(x => x.Familiia));
            view.AddProperties(Information.ExtractPropertyPath<Sotrudnik>(x => x.DataRozhdeniia));
            view.AddProperties(Information.ExtractPropertyPath<Sotrudnik>(x => x.Departament));
            view.AddProperties(Information.ExtractPropertyPath<Sotrudnik>(x => x.Departament.Name));
            view.AddProperties(Information.ExtractPropertyPath<Sotrudnik>(x => x.Departament.Vid));
            view.AddProperties(Information.ExtractPropertyPath<Sotrudnik>(x => x.Departament.Vid.Name));
            var lcs = LoadingCustomizationStruct.GetSimpleStruct(typeof(Sotrudnik), view);
            var data = dataService.LoadObjects(lcs).Cast<Sotrudnik>();

            return data;
        }

        private static bool CallBackBeforeUpdate(DataObject obj)
        {
            if (obj is Comment
                    && ((Comment)obj).Text == "Test 11111111-1111-1111-1111-111111111111")
            {
                throw new Exception("For test purposes an exception is thrown when this comment is indented for updating.");
            }

            return true;
        }

        private static void CallbackAfterCreate(DataObject dataObject)
        {
            // TODO: implement handler
        }

        private static string Test(QueryParameters queryParameters)
        {
            return "Hello world!";
        }

        /// <summary>
        /// OData function for clearing log records.
        /// </summary>
        /// <param name="dateTime">Stringed <see cref="DateTimeOffset"/> date. Delete all records older that date.</param>
        /// <returns>Success operation return <c>true</c>.</returns>
        private static bool ClearLogRecords(string dateTime)
        {
            DateTimeOffset date;
            if (!DateTimeOffset.TryParse(dateTime, out date))
            {
                throw new ArgumentException("Invalid date format", nameof(dateTime));
            }

            SQLDataService ds = (SQLDataService)DataServiceProvider.DataService;
            IDbConnection connection = ds.GetConnection();
            connection.Open();
            try
            {
                IDbCommand command = connection.CreateCommand();
                string tableName = Information.GetClassStorageName(typeof(ApplicationLog));
                string timestampColumnName = Information.GetPropertyStorageName(
                    typeof(ApplicationLog),
                    Information.ExtractPropertyName<ApplicationLog>(a => a.Timestamp));
                command.CommandText = $"DELETE FROM {tableName} WHERE {timestampColumnName} <= @timestamp";
                SqlParameter timestampParameter = new SqlParameter("@timestamp", SqlDbType.DateTimeOffset) { Value = date };
                command.Parameters.Add(timestampParameter);
                command.ExecuteScalar();
                return true;
            }
            finally
            {
                // Close the connection if that's how we got it.
                connection.Close();
            }
        }

        /// <summary>
        /// OData function for delete all select records.
        /// </summary>
        /// <param name="queryParameters">Request OData Parameters.</param>
        /// <param name="pathName">Type name.</param>
        /// <param name="filterQuery">Query for filter.</param>
        /// <returns>Number of deleted records.</returns>
        private static object DeleteAllSelect(QueryParameters queryParameters, string pathName, string filterQuery)
        {
            try
            {
                SQLDataService dataService = DataServiceProvider.DataService as SQLDataService;

                var uri = $"http://a/b/c?{filterQuery}";
                Type type = queryParameters.GetDataObjectType(pathName);
                LoadingCustomizationStruct lcs = queryParameters.CreateLcs(type, uri);
                DataObject[] updateObjects = dataService.LoadObjects(lcs);
                int deletedCount = updateObjects.Length;

                for (var i = 0; i < updateObjects.Length; i++)
                {
                    updateObjects[i].SetStatus(ObjectStatus.Deleted);
                }

                DataObject[] updateObjectsArray = updateObjects.ToArray();
                dataService.UpdateObjects(ref updateObjectsArray);

                return new
                {
                    deletedCount,
                    message = string.Empty
                };
            }
            catch (Exception e)
            {
                Exception ex = e;
                var msg = ex.Message;
                while (ex.InnerException != null)
                {
                    ex = ex.InnerException;
                    msg += Environment.NewLine + ex.Message;
                }

                return new
                {
                    deletedCount = -1,
                    message = msg
                };
            }
        }

        /// <summary>
        /// OData action for returning one-typed array with known type.
        /// </summary>
        /// <returns>One-typed array with known type.</returns>
        private static IEnumerable<ApplicationUser> ODataTestTypedResult()
        {
            return new ApplicationUser[]
            {
                new ApplicationUser() { Name = "TestName1", EMail = "TestEmail1" },
                new ApplicationUser() { Name = "TestName2", EMail = "TestEmail2" },
                new ApplicationUser() { Name = "TestName3", EMail = "TestEmail3" }
            };
        }

        /// <summary>
        /// OData action for returning one-typed array with unknown type.
        /// </summary>
        /// <returns>One-typed array with unknown type.</returns>
        private static IEnumerable<DataObject> ODataTestNotTypedResult()
        {
            return ODataTestTypedResult();
        }

        /// <summary>
        /// OData action for returning multy-typed array.
        /// </summary>
        /// <returns>Multy-typed array.</returns>
        private static IEnumerable<DataObject> ODataTestMultyTypedResult()
        {
            return new DataObject[]
            {
                new ApplicationUser() { Name = "TestUserName", EMail = "TestUserEmail" },
                new Suggestion() { Address = "TestSuggestionAddress", Text = "TestSuggestionText" },
                new SuggestionType() { Name = "TestSuggestionTypeName" }
            };
        }

        /// <summary>
        /// OData action for returning multy-typed array with masters.
        /// But there is a problem with returning masters from odata actions.
        /// </summary>
        /// <returns>Multy-typed array with masters.</returns>
        private static IEnumerable<DataObject> ODataTestMultyTypedWithLinksResult()
        {
            var applicationUser = new ApplicationUser() { Name = "TestLinkedUser" };

            return new DataObject[]
            {
                new ApplicationUser() { Name = "TestUserName", EMail = "TestUserEmail" },
                new Suggestion() { Address = "TestSuggestionAddress", Text = "TestSuggestionText", Author = applicationUser }
            };
        }
    }
}
