using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QTM.Models;

namespace QTM.Controllers
{
    public class TestController : Controller
    {
        // GET: Test
        public ActionResult Index()
        {
            List<Employee> employees = new List<Employee>();
            Employee employee = new Employee();
            employees.Add(new Employee { EmployeeID = 1, Name = "TSR", Department = "MCA" });
            employees.Add(new Employee { EmployeeID = 2, Name = "YSR", Department = "CSE" });
            employees.Add(new Employee { EmployeeID = 3, Name = "ANU", Department = "IT" });
            return View(employees);
            

        }
        public ActionResult List()
        {
            using (OurDbContext db = new OurDbContext())
            {
                return View(db.regemp.ToList());
            }

        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(RegEmp emp)
        {
            if(ModelState.IsValid)
            {
                using (OurDbContext db = new OurDbContext())
                {
                    db.regemp.Add(emp);
                    db.SaveChanges();
                }
                ModelState.Clear();
                ViewBag.Message = emp.FirstName + " " + emp.LastName + " " + "Successfully registerd";
            }
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(RegEmp emp)
        {
            //TSREntities2 db1 = new TSREntities2();
            //List<RegMVC> reg = db1.RegMVCs.ToList();
            using (OurDbContext db = new OurDbContext())
            {
                var usr = db.regemp.Single(u => u.Email == emp.Email && u.Password == emp.Password);
                if(usr!=null)
                {
                    Session["email"] = usr.Email.ToString();
                    Session["Password"] = usr.Password.ToString();
                    Session["UserName"] = usr.FirstName.ToString();
                    return RedirectToAction("LoggedIn");
                }
                else
                {
                    ModelState.AddModelError("","User name or password is wrong");
                }
            }
        return View();
        }

        public ActionResult LoggedIn()
        {
            if(Session["email"]!=null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
           
        }
    }
}