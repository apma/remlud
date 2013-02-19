using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Entities.Modules;
using NHibernate;
using NHibernate.Cfg;
using NHibernate.Linq;
using NHibernate.Mapping;
using NHibernate_Module.Repositories;
using NHibernate_Module.Domain;

namespace RemboltLawFirm_Mod
{
    public partial class EditEmployees : PortalModuleBase
    {
        private EmployeeRepository _employeeRepository = new EmployeeRepository();
        private PracticeRepository _practiceRepository = new PracticeRepository();

        protected int employeePageId;
        protected string employeePageTitle;
        protected Employee employee;
        protected Employee employeeLink;
        protected Employee formData;
        protected IList<Practice> practices;
        protected Practice practiceName;
        protected Practice practiceLink;

        
        protected void Page_Load(object sender, System.EventArgs e)
        {
            ListPractices.Items.Clear();
            EmployeePractices.Items.Clear();
            employeePageId = PortalSettings.ActiveTab.TabID;
            employeePageTitle = PortalSettings.ActiveTab.TabName;
            DNNPageInput.Text = employeePageId.ToString();
            DisplayNameInput.Text = employeePageTitle;

        }
        
        protected void Page_PreRender()
        {
            formData = _employeeRepository.GetByPage(employeePageId);
            FirstNameInput.Text = formData.FirstName;
            LastNameInput.Text = formData.LastName;
            TitleInput.Text = formData.Title;
            EmailInput.Text = formData.Email;
            VideoLinkInput.Text = formData.VideoLink;
            ImageLinkInput.Text = formData.ImageLink;
            VcardLinkInput.Text = formData.VcardLink;

            
            //Get all practices from Database
            //Populate in Listbox
            
            practices = _practiceRepository.GetAllPractices();
            foreach (var practice in practices)
            {
                ListPractices.Items.Add(practice.PracticeName);
            }

            foreach (var practice in formData.Practices)
            {
                EmployeePractices.Items.Add(practice.PracticeName);
            }

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void UpdateEmployee_Click(object sender, EventArgs e)
        {
            //Check for Employee existing in Db
            var pageId = int.Parse(DNNPageInput.Text);
            employee = _employeeRepository.GetByPage(pageId);
            
            //Setup pseudo-form
            var firstName = FirstNameInput.Text;
            var lastName = LastNameInput.Text;
            var title = TitleInput.Text;
            var email = EmailInput.Text;
            var displayName = DisplayNameInput.Text;
            var imageLink = ImageLinkInput.Text;
            var videoLink = VideoLinkInput.Text;
            var vcardLink = VcardLinkInput.Text;

            if (employee != null)
            {
                employee.FirstName = FirstNameInput.Text;
                employee.LastName = lastName;
                employee.Title = title ;
                employee.Email = email;
                employee.NameDisplay = displayName;
                employee.ImageLink = imageLink;
                employee.VideoLink = videoLink;
                employee.VcardLink = vcardLink;

                //Assemble Practices Selected
                foreach (var listIndex in ListPractices.GetSelectedIndices())
                {
                    var item = ListPractices.Items[listIndex].Value;
                    practiceName = _practiceRepository.GetByName(item);

                    employee.Practices.Add(practiceName);
                }
                _employeeRepository.Update(employee);
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                employee = new Employee
                               {
                                   LastName = lastName,
                                   FirstName = firstName,
                                   Title = title,
                                   Email = email,
                                   DNNPage = pageId,
                                   NameDisplay = displayName,
                                   ImageLink = imageLink,
                                   VideoLink = videoLink,
                                   VcardLink = vcardLink
                               };

                _employeeRepository.Add(employee);
                //Assemble Practices Selected
                foreach (var listIndex in ListPractices.GetSelectedIndices())
                {
                    var item = ListPractices.Items[listIndex].Value;
                    practiceName = _practiceRepository.GetByName(item);
                    employee.Practices.Add(practiceName);
                }

                _employeeRepository.Update(employee);
            }
        }

        public void RemovePractice_Click(object sender, EventArgs e)
        {
        //    using (ISession session = NHibernateHelper.OpenSession())
        //    using (ITransaction transaction = session.BeginTransaction())
        //    {
        //        foreach (var selectedIndex in EmployeePractices.GetSelectedIndices())
        //        {
        //            var item = EmployeePractices.Items[selectedIndex].Value;
        //            practiceLink = _practiceRepository.GetByName(item);


        //            practiceLink.Employees.Remove(employee);
        //            employeeLink.Practices.Remove(practiceLink);
        //            _employeeRepository.Update(employee);
        //        }
        //        transaction.Commit();
        //    }
            //practiceLink = _practiceRepository.GetByName(EmployeePractices.SelectedItem.Text);

            //employeeLink = _employeeRepository.GetByPage(employeePageId);

            //employeeLink.Practices.Remove(practiceLink);
            //_employeeRepository.Update(employeeLink);

            //using (ISession session = NHibernateHelper.OpenSession())
            //using (ITransaction transaction = session.BeginTransaction())
            //{
                
            //    session.CreateQuery("delete from RL_EmployeePractices e where e.PracticeId = :practice and e.EmployeeId = :employee")
            //        .SetParameter(":practice", practiceLink.PracticeId)
            //        .SetParameter(":employee", employeeLink.EmployeeId);

                
            //    transaction.Commit();


            //}
            
            Response.Redirect(Request.RawUrl);
        }

    }
}