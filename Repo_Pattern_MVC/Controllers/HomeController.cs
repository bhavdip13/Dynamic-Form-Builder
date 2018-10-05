using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Repo_Pattern_MVC.Utility;
using Repo_Pattern_MVC_Model;
using Repo_Pattern_MVC_Model.Model;
using Repo_pattern_MVC_Repository.Service;
using Repo_pattern_MVC_Repository.ServiceContract;

namespace Repo_Pattern_MVC.Controllers
{
	public class HomeController : Controller
	{
		IHome_Repository _Home_Repository = new Home_Repository(new Repo_Pattern_MVCEntities());
		public ActionResult Index()
		{
		ViewBag.FormnameList=	_Home_Repository.GetFormName();
			return View();
		}
		
		public ActionResult About()
		{
			ViewBag.Message = "Your application description page.";

			return View();
		}

		public ActionResult Contact()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}
		[ValidateInput(false)]
		public JsonResult SaveForm(int UserId, string UserName, string Form_Data)
		{
			var result = new jsonMessage();
			try
			{
				Form_Data_Master _modal = new Form_Data_Master();
				_modal.UserId = UserId;
				_modal.UserName = UserName;
				_modal.Form_Data = Form_Data;

				int Issave = _Home_Repository.SaveForm(_modal);
				if (Issave == 1)
				{
					result.Message = "Form has beed submited successfully.";
					result.Status = true;
				}

			}
			catch (Exception ex)
			{
				//ErrorLogers.ErrorLog(ex);
				result.Message = ex.ToString();
				result.Status = false;
			}
			return Json(result, JsonRequestBehavior.AllowGet);
		}

	}
}