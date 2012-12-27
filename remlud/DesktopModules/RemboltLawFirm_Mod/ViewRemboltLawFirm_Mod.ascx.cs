using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using NHibernate;
using NHibernate.Cfg;
using NHibernate.Mapping;
using NHibernate_Module.Repositories;
using NHibernate_Module.Domain;

namespace RemboltLawFirm_Mod
{

    public partial class ViewRemboltLawFirm_Mod : PortalModuleBase
    {
        EmployeeRepository _employeeRepository = new EmployeeRepository();
        public Employee ProfileDisplay;

        protected void Page_Load(object sender, System.EventArgs e)
        {
            var employeePageId = PortalSettings.ActiveTab.TabID;
            ProfileDisplay = _employeeRepository.GetByPage(employeePageId) ?? new Employee();
        }

    }

}