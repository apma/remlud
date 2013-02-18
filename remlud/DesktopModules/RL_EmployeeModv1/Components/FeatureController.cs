/*
' Copyright (c) 2013 DotNetNuke Corporation
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/

using System.Collections.Generic;
//using System.Xml;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Search;

namespace DotNetNuke.Modules.RL_EmployeeModv1.Components
{

    /// -----------------------------------------------------------------------------
    /// <summary>
    /// The Controller class for RL_EmployeeModv1
    /// 
    /// The FeatureController class is defined as the BusinessController in the manifest file (.dnn)
    /// DotNetNuke will poll this class to find out which Interfaces the class implements. 
    /// 
    /// The IPortable interface is used to import/export content from a DNN module
    /// 
    /// The ISearchable interface is used by DNN to index the content of a module
    /// 
    /// The IUpgradeable interface allows module developers to execute code during the upgrade 
    /// process for a module.
    /// 
    /// Below you will find stubbed out implementations of each, uncomment and populate with your own data
    /// </summary>
    /// -----------------------------------------------------------------------------

    //uncomment the interfaces to add the support.
    public class FeatureController //: IPortable, ISearchable, IUpgradeable
    {


        #region Optional Interfaces

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// ExportModule implements the IPortable ExportModule Interface
        /// </summary>
        /// <param name="ModuleID">The Id of the module to be exported</param>
        /// -----------------------------------------------------------------------------
        //public string ExportModule(int ModuleID)
        //{
        //string strXML = "";

        //List<RL_EmployeeModv1Info> colRL_EmployeeModv1s = GetRL_EmployeeModv1s(ModuleID);
        //if (colRL_EmployeeModv1s.Count != 0)
        //{
        //    strXML += "<RL_EmployeeModv1s>";

        //    foreach (RL_EmployeeModv1Info objRL_EmployeeModv1 in colRL_EmployeeModv1s)
        //    {
        //        strXML += "<RL_EmployeeModv1>";
        //        strXML += "<content>" + DotNetNuke.Common.Utilities.XmlUtils.XMLEncode(objRL_EmployeeModv1.Content) + "</content>";
        //        strXML += "</RL_EmployeeModv1>";
        //    }
        //    strXML += "</RL_EmployeeModv1s>";
        //}

        //return strXML;

        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// ImportModule implements the IPortable ImportModule Interface
        /// </summary>
        /// <param name="ModuleID">The Id of the module to be imported</param>
        /// <param name="Content">The content to be imported</param>
        /// <param name="Version">The version of the module to be imported</param>
        /// <param name="UserId">The Id of the user performing the import</param>
        /// -----------------------------------------------------------------------------
        //public void ImportModule(int ModuleID, string Content, string Version, int UserID)
        //{
        //XmlNode xmlRL_EmployeeModv1s = DotNetNuke.Common.Globals.GetContent(Content, "RL_EmployeeModv1s");
        //foreach (XmlNode xmlRL_EmployeeModv1 in xmlRL_EmployeeModv1s.SelectNodes("RL_EmployeeModv1"))
        //{
        //    RL_EmployeeModv1Info objRL_EmployeeModv1 = new RL_EmployeeModv1Info();
        //    objRL_EmployeeModv1.ModuleId = ModuleID;
        //    objRL_EmployeeModv1.Content = xmlRL_EmployeeModv1.SelectSingleNode("content").InnerText;
        //    objRL_EmployeeModv1.CreatedByUser = UserID;
        //    AddRL_EmployeeModv1(objRL_EmployeeModv1);
        //}

        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// GetSearchItems implements the ISearchable Interface
        /// </summary>
        /// <param name="ModInfo">The ModuleInfo for the module to be Indexed</param>
        /// -----------------------------------------------------------------------------
        //public DotNetNuke.Services.Search.SearchItemInfoCollection GetSearchItems(DotNetNuke.Entities.Modules.ModuleInfo ModInfo)
        //{
        //SearchItemInfoCollection SearchItemCollection = new SearchItemInfoCollection();

        //List<RL_EmployeeModv1Info> colRL_EmployeeModv1s = GetRL_EmployeeModv1s(ModInfo.ModuleID);

        //foreach (RL_EmployeeModv1Info objRL_EmployeeModv1 in colRL_EmployeeModv1s)
        //{
        //    SearchItemInfo SearchItem = new SearchItemInfo(ModInfo.ModuleTitle, objRL_EmployeeModv1.Content, objRL_EmployeeModv1.CreatedByUser, objRL_EmployeeModv1.CreatedDate, ModInfo.ModuleID, objRL_EmployeeModv1.ItemId.ToString(), objRL_EmployeeModv1.Content, "ItemId=" + objRL_EmployeeModv1.ItemId.ToString());
        //    SearchItemCollection.Add(SearchItem);
        //}

        //return SearchItemCollection;

        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// UpgradeModule implements the IUpgradeable Interface
        /// </summary>
        /// <param name="Version">The current version of the module</param>
        /// -----------------------------------------------------------------------------
        //public string UpgradeModule(string Version)
        //{
        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        #endregion

    }

}
