﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EmberFlexberryDummy
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET.Business;
    using ICSSoft.STORMNET;
    using ICSSoft.STORMNET.Business.Audit;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Application user.
    /// </summary>
    // *** Start programmer edit section *** (ApplicationUser CustomAttributes)

    // *** End programmer edit section *** (ApplicationUser CustomAttributes)
    [BusinessServer("EmberFlexberryDummy.ApplicationBS, EmberFlexberry.BusinessServers", ICSSoft.STORMNET.Business.DataServiceObjectEvents.OnAllEvents)]
    [AutoAltered()]
    [Caption("Application user")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("ApplicationUserE", new string[] {
            "Name as \'Name\'",
            "EMail as \'E-mail\'",
            "Phone1 as \'Phone1\'",
            "Phone2 as \'Phone2\'",
            "Phone3 as \'Phone3\'",
            "Activated as \'Activated\'",
            "VK as \'VK\'",
            "Facebook as \'Facebook\'",
            "Twitter as \'Twitter\'",
            "Birthday as \'Birthday\'",
            "Gender as \'Gender\'",
            "Vip as \'Vip\'",
            "Karma as \'Karma\'"})]
    [View("ApplicationUserL", new string[] {
            "Name as \'Name\'",
            "EMail as \'E-mail\'",
            "Activated as \'Activated\'",
            "Birthday as \'Birthday\'",
            "Gender as \'Gender\'",
            "Karma as \'Karma\'"})]
    [View("AuditView", new string[] {
            "Name as \'Name\'",
            "EMail as \'E mail\'",
            "Phone1 as \'Phone1\'",
            "Phone2 as \'Phone2\'",
            "Phone3 as \'Phone3\'",
            "Activated as \'Activated\'",
            "VK as \'VK\'",
            "Facebook as \'Facebook\'",
            "Twitter as \'Twitter\'",
            "Birthday as \'Birthday\'",
            "Gender as \'Gender\'",
            "Vip as \'Vip\'",
            "Karma as \'Karma\'"})]
    public class ApplicationUser : ICSSoft.STORMNET.DataObject, IDataObjectWithAuditFields
    {
        
        private System.Nullable<System.DateTime> fCreateTime;
        
        private string fCreator;
        
        private System.Nullable<System.DateTime> fEditTime;
        
        private string fEditor;
        
        private string fName;
        
        private string fEMail;
        
        private string fPhone1;
        
        private string fPhone2;
        
        private string fPhone3;
        
        private bool fActivated;
        
        private string fVK;
        
        private string fFacebook;
        
        private string fTwitter;
        
        private System.DateTime? fBirthday;
        
        private EmberFlexberryDummy.Gender fGender;
        
        private bool fVip;
        
        private decimal fKarma = 100m;
        
        // *** Start programmer edit section *** (ApplicationUser CustomMembers)

        // *** End programmer edit section *** (ApplicationUser CustomMembers)

        
        /// <summary>
        /// Время создания объекта.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.CreateTime CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.CreateTime CustomAttributes)
        public virtual System.Nullable<System.DateTime> CreateTime
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.CreateTime Get start)

                // *** End programmer edit section *** (ApplicationUser.CreateTime Get start)
                System.Nullable<System.DateTime> result = this.fCreateTime;
                // *** Start programmer edit section *** (ApplicationUser.CreateTime Get end)

                // *** End programmer edit section *** (ApplicationUser.CreateTime Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.CreateTime Set start)

                // *** End programmer edit section *** (ApplicationUser.CreateTime Set start)
                this.fCreateTime = value;
                // *** Start programmer edit section *** (ApplicationUser.CreateTime Set end)

                // *** End programmer edit section *** (ApplicationUser.CreateTime Set end)
            }
        }
        
        /// <summary>
        /// Создатель объекта.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Creator CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Creator CustomAttributes)
        public virtual string Creator
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Creator Get start)

                // *** End programmer edit section *** (ApplicationUser.Creator Get start)
                string result = this.fCreator;
                // *** Start programmer edit section *** (ApplicationUser.Creator Get end)

                // *** End programmer edit section *** (ApplicationUser.Creator Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Creator Set start)

                // *** End programmer edit section *** (ApplicationUser.Creator Set start)
                this.fCreator = value;
                // *** Start programmer edit section *** (ApplicationUser.Creator Set end)

                // *** End programmer edit section *** (ApplicationUser.Creator Set end)
            }
        }
        
        /// <summary>
        /// Время последнего редактирования объекта.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.EditTime CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.EditTime CustomAttributes)
        public virtual System.Nullable<System.DateTime> EditTime
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.EditTime Get start)

                // *** End programmer edit section *** (ApplicationUser.EditTime Get start)
                System.Nullable<System.DateTime> result = this.fEditTime;
                // *** Start programmer edit section *** (ApplicationUser.EditTime Get end)

                // *** End programmer edit section *** (ApplicationUser.EditTime Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.EditTime Set start)

                // *** End programmer edit section *** (ApplicationUser.EditTime Set start)
                this.fEditTime = value;
                // *** Start programmer edit section *** (ApplicationUser.EditTime Set end)

                // *** End programmer edit section *** (ApplicationUser.EditTime Set end)
            }
        }
        
        /// <summary>
        /// Последний редактор объекта.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Editor CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Editor CustomAttributes)
        public virtual string Editor
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Editor Get start)

                // *** End programmer edit section *** (ApplicationUser.Editor Get start)
                string result = this.fEditor;
                // *** Start programmer edit section *** (ApplicationUser.Editor Get end)

                // *** End programmer edit section *** (ApplicationUser.Editor Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Editor Set start)

                // *** End programmer edit section *** (ApplicationUser.Editor Set start)
                this.fEditor = value;
                // *** Start programmer edit section *** (ApplicationUser.Editor Set end)

                // *** End programmer edit section *** (ApplicationUser.Editor Set end)
            }
        }
        
        /// <summary>
        /// Name.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Name CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Name CustomAttributes)
        [NotNull()]
        public virtual string Name
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Name Get start)

                // *** End programmer edit section *** (ApplicationUser.Name Get start)
                string result = this.fName;
                // *** Start programmer edit section *** (ApplicationUser.Name Get end)

                // *** End programmer edit section *** (ApplicationUser.Name Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Name Set start)

                // *** End programmer edit section *** (ApplicationUser.Name Set start)
                this.fName = value;
                // *** Start programmer edit section *** (ApplicationUser.Name Set end)

                // *** End programmer edit section *** (ApplicationUser.Name Set end)
            }
        }
        
        /// <summary>
        /// EMail.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.EMail CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.EMail CustomAttributes)
        [NotNull()]
        public virtual string EMail
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.EMail Get start)

                // *** End programmer edit section *** (ApplicationUser.EMail Get start)
                string result = this.fEMail;
                // *** Start programmer edit section *** (ApplicationUser.EMail Get end)

                // *** End programmer edit section *** (ApplicationUser.EMail Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.EMail Set start)

                // *** End programmer edit section *** (ApplicationUser.EMail Set start)
                this.fEMail = value;
                // *** Start programmer edit section *** (ApplicationUser.EMail Set end)

                // *** End programmer edit section *** (ApplicationUser.EMail Set end)
            }
        }
        
        /// <summary>
        /// Phone1.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Phone1 CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Phone1 CustomAttributes)
        public virtual string Phone1
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Phone1 Get start)

                // *** End programmer edit section *** (ApplicationUser.Phone1 Get start)
                string result = this.fPhone1;
                // *** Start programmer edit section *** (ApplicationUser.Phone1 Get end)

                // *** End programmer edit section *** (ApplicationUser.Phone1 Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Phone1 Set start)

                // *** End programmer edit section *** (ApplicationUser.Phone1 Set start)
                this.fPhone1 = value;
                // *** Start programmer edit section *** (ApplicationUser.Phone1 Set end)

                // *** End programmer edit section *** (ApplicationUser.Phone1 Set end)
            }
        }
        
        /// <summary>
        /// Phone2.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Phone2 CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Phone2 CustomAttributes)
        public virtual string Phone2
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Phone2 Get start)

                // *** End programmer edit section *** (ApplicationUser.Phone2 Get start)
                string result = this.fPhone2;
                // *** Start programmer edit section *** (ApplicationUser.Phone2 Get end)

                // *** End programmer edit section *** (ApplicationUser.Phone2 Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Phone2 Set start)

                // *** End programmer edit section *** (ApplicationUser.Phone2 Set start)
                this.fPhone2 = value;
                // *** Start programmer edit section *** (ApplicationUser.Phone2 Set end)

                // *** End programmer edit section *** (ApplicationUser.Phone2 Set end)
            }
        }
        
        /// <summary>
        /// Phone3.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Phone3 CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Phone3 CustomAttributes)
        public virtual string Phone3
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Phone3 Get start)

                // *** End programmer edit section *** (ApplicationUser.Phone3 Get start)
                string result = this.fPhone3;
                // *** Start programmer edit section *** (ApplicationUser.Phone3 Get end)

                // *** End programmer edit section *** (ApplicationUser.Phone3 Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Phone3 Set start)

                // *** End programmer edit section *** (ApplicationUser.Phone3 Set start)
                this.fPhone3 = value;
                // *** Start programmer edit section *** (ApplicationUser.Phone3 Set end)

                // *** End programmer edit section *** (ApplicationUser.Phone3 Set end)
            }
        }
        
        /// <summary>
        /// Activated.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Activated CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Activated CustomAttributes)
        public virtual bool Activated
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Activated Get start)

                // *** End programmer edit section *** (ApplicationUser.Activated Get start)
                bool result = this.fActivated;
                // *** Start programmer edit section *** (ApplicationUser.Activated Get end)

                // *** End programmer edit section *** (ApplicationUser.Activated Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Activated Set start)

                // *** End programmer edit section *** (ApplicationUser.Activated Set start)
                this.fActivated = value;
                // *** Start programmer edit section *** (ApplicationUser.Activated Set end)

                // *** End programmer edit section *** (ApplicationUser.Activated Set end)
            }
        }
        
        /// <summary>
        /// VK.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.VK CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.VK CustomAttributes)
        public virtual string VK
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.VK Get start)

                // *** End programmer edit section *** (ApplicationUser.VK Get start)
                string result = this.fVK;
                // *** Start programmer edit section *** (ApplicationUser.VK Get end)

                // *** End programmer edit section *** (ApplicationUser.VK Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.VK Set start)

                // *** End programmer edit section *** (ApplicationUser.VK Set start)
                this.fVK = value;
                // *** Start programmer edit section *** (ApplicationUser.VK Set end)

                // *** End programmer edit section *** (ApplicationUser.VK Set end)
            }
        }
        
        /// <summary>
        /// Facebook.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Facebook CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Facebook CustomAttributes)
        public virtual string Facebook
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Facebook Get start)

                // *** End programmer edit section *** (ApplicationUser.Facebook Get start)
                string result = this.fFacebook;
                // *** Start programmer edit section *** (ApplicationUser.Facebook Get end)

                // *** End programmer edit section *** (ApplicationUser.Facebook Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Facebook Set start)

                // *** End programmer edit section *** (ApplicationUser.Facebook Set start)
                this.fFacebook = value;
                // *** Start programmer edit section *** (ApplicationUser.Facebook Set end)

                // *** End programmer edit section *** (ApplicationUser.Facebook Set end)
            }
        }
        
        /// <summary>
        /// Twitter.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Twitter CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Twitter CustomAttributes)
        public virtual string Twitter
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Twitter Get start)

                // *** End programmer edit section *** (ApplicationUser.Twitter Get start)
                string result = this.fTwitter;
                // *** Start programmer edit section *** (ApplicationUser.Twitter Get end)

                // *** End programmer edit section *** (ApplicationUser.Twitter Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Twitter Set start)

                // *** End programmer edit section *** (ApplicationUser.Twitter Set start)
                this.fTwitter = value;
                // *** Start programmer edit section *** (ApplicationUser.Twitter Set end)

                // *** End programmer edit section *** (ApplicationUser.Twitter Set end)
            }
        }
        
        /// <summary>
        /// Birthday.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Birthday CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Birthday CustomAttributes)
        public virtual System.DateTime? Birthday
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Birthday Get start)

                // *** End programmer edit section *** (ApplicationUser.Birthday Get start)
                System.DateTime? result = this.fBirthday;
                // *** Start programmer edit section *** (ApplicationUser.Birthday Get end)

                // *** End programmer edit section *** (ApplicationUser.Birthday Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Birthday Set start)

                // *** End programmer edit section *** (ApplicationUser.Birthday Set start)
                this.fBirthday = value;
                // *** Start programmer edit section *** (ApplicationUser.Birthday Set end)

                // *** End programmer edit section *** (ApplicationUser.Birthday Set end)
            }
        }
        
        /// <summary>
        /// Gender.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Gender CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Gender CustomAttributes)
        public virtual EmberFlexberryDummy.Gender Gender
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Gender Get start)

                // *** End programmer edit section *** (ApplicationUser.Gender Get start)
                EmberFlexberryDummy.Gender result = this.fGender;
                // *** Start programmer edit section *** (ApplicationUser.Gender Get end)

                // *** End programmer edit section *** (ApplicationUser.Gender Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Gender Set start)

                // *** End programmer edit section *** (ApplicationUser.Gender Set start)
                this.fGender = value;
                // *** Start programmer edit section *** (ApplicationUser.Gender Set end)

                // *** End programmer edit section *** (ApplicationUser.Gender Set end)
            }
        }
        
        /// <summary>
        /// Vip.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Vip CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Vip CustomAttributes)
        public virtual bool Vip
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Vip Get start)

                // *** End programmer edit section *** (ApplicationUser.Vip Get start)
                bool result = this.fVip;
                // *** Start programmer edit section *** (ApplicationUser.Vip Get end)

                // *** End programmer edit section *** (ApplicationUser.Vip Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Vip Set start)

                // *** End programmer edit section *** (ApplicationUser.Vip Set start)
                this.fVip = value;
                // *** Start programmer edit section *** (ApplicationUser.Vip Set end)

                // *** End programmer edit section *** (ApplicationUser.Vip Set end)
            }
        }
        
        /// <summary>
        /// Karma.
        /// </summary>
        // *** Start programmer edit section *** (ApplicationUser.Karma CustomAttributes)

        // *** End programmer edit section *** (ApplicationUser.Karma CustomAttributes)
        public virtual decimal Karma
        {
            get
            {
                // *** Start programmer edit section *** (ApplicationUser.Karma Get start)

                // *** End programmer edit section *** (ApplicationUser.Karma Get start)
                decimal result = this.fKarma;
                // *** Start programmer edit section *** (ApplicationUser.Karma Get end)

                // *** End programmer edit section *** (ApplicationUser.Karma Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ApplicationUser.Karma Set start)

                // *** End programmer edit section *** (ApplicationUser.Karma Set start)
                this.fKarma = value;
                // *** Start programmer edit section *** (ApplicationUser.Karma Set end)

                // *** End programmer edit section *** (ApplicationUser.Karma Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "ApplicationUserE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ApplicationUserE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ApplicationUserE", typeof(EmberFlexberryDummy.ApplicationUser));
                }
            }
            
            /// <summary>
            /// "ApplicationUserL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ApplicationUserL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ApplicationUserL", typeof(EmberFlexberryDummy.ApplicationUser));
                }
            }
            
            /// <summary>
            /// "AuditView" view.
            /// </summary>
            public static ICSSoft.STORMNET.View AuditView
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("AuditView", typeof(EmberFlexberryDummy.ApplicationUser));
                }
            }
        }
    }
}
