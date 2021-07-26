namespace EmberFlexberryDummy
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;
    using System.Reflection;
    using System.Web;
    using System.Web.Http;
    using ICSSoft.Services;
    using ICSSoft.STORMNET;
    using ICSSoft.STORMNET.Business;
    using IIS.Caseberry.Logging.Objects;
    using NewPlatform.Flexberry.AspNet.WebApi.Cors;
    using NewPlatform.Flexberry.ORM.ODataService.Extensions;
    using NewPlatform.Flexberry.ORM.ODataService.Functions;
    using NewPlatform.Flexberry.ORM.ODataService.Model;
    using NewPlatform.Flexberry.ORM.ODataService.WebApi.Extensions;
    using NewPlatform.Flexberry.Services;
    using Unity;
    using Unity.AspNet.WebApi;
    using ICSSoft.STORMNET.Business.LINQProvider;
    using ICSSoft.STORMNET.FunctionalLanguage;
    using ICSSoft.STORMNET.FunctionalLanguage.SQLWhere;

    /// <summary>
    /// Configure OData Service.
    /// </summary>
    internal static class ODataConfig
    {
        /// <summary>
        /// Configure OData by DataObjects assembly.
        /// </summary>
        /// <param name="config">Http configuration object.</param>
        /// <param name="container">Unity container.</param>
        public static void Configure(HttpConfiguration config, IUnityContainer container, HttpServer httpServer)
        {
            if (config == null)
            {
                throw new ArgumentNullException("config");
            }

            if (container == null)
            {
                throw new ArgumentNullException("container");
            }

            // To support CORS uncomment the line below.
            config.EnableCors(new DynamicCorsPolicyProvider(true));

            // Use constructor with true first parameter for enable SupportsCredentials.

            // Use Unity as WebAPI dependency resolver
            config.DependencyResolver = new UnityDependencyResolver(container);

            // Config file upload.
            config.MapODataServiceFileRoute("File", "api/File", HttpContext.Current.Server.MapPath("~/Uploads"), container.Resolve<IDataService>());

            // Create EDM model builder
            var assemblies = new[]
            {
                Assembly.Load("EmberFlexberry.Objects"),
                typeof(ApplicationLog).Assembly,
                typeof(UserSetting).Assembly,
                typeof(Lock).Assembly,
            };
            var builder = new DefaultDataObjectEdmModelBuilder(assemblies);

            // Map OData Service
            var token = config.MapODataServiceDataObjectRoute(builder, httpServer);

            // User functions
            token.Functions.Register(new Func<QueryParameters, string>(Test));
            token.Functions.Register(new Func<QueryParameters, string>(UniqueAttributes));
            token.Functions.Register(new Func<QueryParameters, string>(UniqueAttributes2));
            token.Functions.Register(new Func<string, bool>(ClearLogRecords));
            token.Functions.Register(new Func<QueryParameters, IEnumerable<Sotrudnik>>(GetMastersForTest));
            token.Functions.RegisterAction(new Func<QueryParameters, string, string, object>(DeleteAllSelect));

            // Event handlers
            token.Events.CallbackAfterCreate = CallbackAfterCreate;
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

        private static void CallbackAfterCreate(DataObject dataObject)
        {
            // TODO: implement handler
        }

        private static string Test(QueryParameters queryParameters)
        {
            return "Hello world!";
        }

        private static string UniqueAttributes2(QueryParameters queryParameters)
        {
            var ds = DataServiceProvider.DataService as SQLDataService;
            var modelName = GetPropertyValue2(queryParameters, "modelName");
            var textValue = GetPropertyValue2(queryParameters, "property1");
            var dateValue = GetPropertyValue2(queryParameters, "property2");

            DateTime dt;

            if (!string.IsNullOrWhiteSpace(dateValue))
            {
                var indChar = dateValue.IndexOf('(');

                if (indChar > 1)
                {
                    dateValue = dateValue.Substring(0, indChar).Replace("GMT", string.Empty).TrimEnd();
                }

                dt = DateTime.ParseExact(dateValue, "ddd MMM dd yyyy HH:mm:ss zzz", System.Globalization.CultureInfo.InvariantCulture);
            }
            else
            {
                return "false";
            }

            var cnt = ds.Query<Suggestion>(Suggestion.Views.SuggestionE)
                .Where(x => x.Text == textValue && x.Date == dt)
                .Count();

            return cnt == 0 ? "true" : "false";
        }

        private static string UniqueAttributes(QueryParameters queryParameters)
        {
            var ds = DataServiceProvider.DataService as SQLDataService;
            var ldef = SQLWhereLanguageDef.LanguageDef;

            var objectTypeName = GetPropertyValue<string>(queryParameters, "objectType");
            var property1name = GetPropertyValue<string>(queryParameters, "property1name");
            var property2name = GetPropertyValue<string>(queryParameters, "property2name");
            var property1value = GetPropertyValue<string>(queryParameters, "property1value");
            var property2value = GetPropertyValue<string>(queryParameters, "property2value");

            var objectType = Type.GetType(objectTypeName);
            var view = new ICSSoft.STORMNET.View();

            view.DefineClassType = objectType;
            view.AddProperties(property1name);
            view.AddProperties(property2name);

            var lcs = LoadingCustomizationStruct.GetSimpleStruct(objectType, view);

            lcs.LimitFunction = ldef.GetFunction(ldef.funcAND,
                ldef.GetFunction(ldef.funcEQ, new VariableDef(ldef.StringType, property1name), property1value),
                ldef.GetFunction(ldef.funcEQ, new VariableDef(ldef.StringType, property2name), property2value));

            var cnt = ds.GetObjectsCount(lcs);

            return cnt == 0 ? "true" : "false";
        }

        /// <summary>
        /// Получить значение из параметров запроса.
        /// </summary>
        /// <typeparam name="T">Тип объекта.</typeparam>
        /// <param name="queryParameters">Параметры запроса.</param>
        /// <param name="key">Имя параметра.</param>
        /// <returns>Значение параметра.</returns>
        private static T GetPropertyValue<T>(QueryParameters queryParameters, string key)
        {
            var props = queryParameters.Request.Properties;
            T result = default(T);

            if (props.TryGetValue(key, out object resultObj))
            {
                result = (T)resultObj;
            }

            return result;
        }

        private static string GetPropertyValue2(QueryParameters queryParameters, string key)
        {
            var p = HttpUtility.ParseQueryString(queryParameters.Request.RequestUri.Query).Get(key);
            string result = null;

            if (!string.IsNullOrWhiteSpace(p))
            {
                result = p;
            }

            return result;
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
    }
}