using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QTM.Models;

namespace QTM.Controllers
{
    public class DbController : Controller
    {
        // GET: Db
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(RegMvc obj)

        {
            if (ModelState.IsValid)
            {
                TSREntities db = new TSREntities();
                db.RegMvcs.Add(obj);
                db.SaveChanges();
            }
           
            ViewBag.Message = obj.FirstName + " " + obj.LastName + " " + "Successfully registerd";
            ModelState.Clear();
            return View();
        }

       public ActionResult List()
        {
            //RegMvc ob = new RegMvc();
            //List<RegMvc> list = new List<RegMvc>();
            //list.Add(ob);
            //return View(list.ToList());

            TSREntities obj = new TSREntities();
            List<RegMvc> reg = obj.RegMvcs.ToList();
            return View(reg);
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(RegMvc obj)
        {
            TSREntities db = new TSREntities();
            var user = db.RegMvcs.Single(u => u.Email == obj.Email && u.Password == obj.Password);
            if (user != null)
            {
                Session["email"] = user.Email.ToString();
                Session["password"] = user.Password.ToString();
                Session["Fname"] = user.FirstName.ToString();
                Session["Lname"] = user.LastName.ToString();
                return RedirectToAction("LoggedIn");
            }
            else
            {
                ModelState.AddModelError("", "Invalid Email or Password");
            }
            return View();
        }

        public ActionResult LoggedIn()
        {
            if (Session["email"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }

        }

        [HttpPost]
        public JsonResult saveList(string ItemList,string TableName)
        {
            TSREntities db = new TSREntities();
            
            var main=ItemList.Split(',');
  

            foreach(var itm in main)
            {
                RegMvc ob = db.RegMvcs.Single(x => x.Id.ToString() == itm);
                RegMvc1 ob1 = new RegMvc1();
                ob1.Id = ob.Id;
                ob1.FirstName = ob.FirstName;
                ob1.LastName = ob.LastName;
                ob1.Email = ob.Email;
                ob1.Password = ob.Password;
                ob1.ConfirmPassword = ob.ConfirmPassword;
                db.RegMvc1.Add(ob1);
                db.SaveChanges();
            }
            return Json("yes",JsonRequestBehavior.AllowGet);
        }

    }
}