using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using Q4TM.Models;

namespace Q4TM.Controllers
{
    public class Q4TMController : Controller
    {
        // GET: Q4TM
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        // This method is used to display the registration page
        public ActionResult Register()
        {
            return View();
        }

        public ActionResult Q4TM()
        {
            return View();
        }

        // This method is used to display the list of tasks from the database corresponding to Important and Urgent
        public ActionResult IUTasks()
        {
            QTMEntities ob = new QTMEntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.EmpTaskLists
                                           where (log.EmpId == empID && log.Quadrant_Id == "Q101")
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status_Percentage


                                           }).ToList();
            return PartialView("IUList", lis);
        }

        // This method is used to display the list of tasks from the database corresponding to Important and NotUrgent
        public ActionResult INUTasks()
        {
            QTMEntities ob = new QTMEntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.EmpTaskLists
                                           where (log.EmpId == empID && log.Quadrant_Id=="Q102")
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status_Percentage


                                           }).ToList();
            return PartialView("INUList", lis);
        }

        // This method is used to display the list of tasks from the database corresponding to NotImportant and Urgent
        public ActionResult NIUTasks()
        {
            QTMEntities ob = new QTMEntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.EmpTaskLists
                                           where (log.EmpId == empID && log.Quadrant_Id=="Q103")
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status_Percentage


                                           }).ToList();
            return PartialView("NIUList", lis);
        }

        // This method is used to display the list of tasks from the database corresponding to NotImportant and NotUrgent
        public ActionResult NINUTasks()
        {
            QTMEntities ob = new QTMEntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.EmpTaskLists
                                           where (log.EmpId == empID && log.Quadrant_Id=="Q104")
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status_Percentage


                                           }).ToList();
            return PartialView("NINUList", lis);
        }

        // This method is used to display the login page
        public ActionResult Login()
        {
            return View();
        }

        // This method is used to register the data into database
        [HttpPost]
        public ActionResult Register(Employee obj)
        {
            if (ModelState != null)
            {
                QTMEntities data = new QTMEntities();
                data.Employees.Add(obj);
                data.SaveChanges();
            }
            ViewBag.Message = obj.FirstName + " " + obj.LastName + " " + "Successfully Registerd";
            ModelState.Clear();
            return View();
        }

        // This method is used to get the data from data base to logged into the system
        [HttpPost]
        public ActionResult Login(Employee obj)
        {
            QTMEntities db = new QTMEntities();
            var user = db.Employees.SingleOrDefault(u => u.EmpId == obj.EmpId && u.Password == obj.Password);
            if (user != null)
            {
                Session["Empid"] = user.EmpId.ToString();
                Session["Fname"] = user.FirstName.ToString();
                Session["Lname"] = user.LastName.ToString();
                ViewBag.Message = "yes";
                return RedirectToAction("UserPage");
            }
            else
            {
                ViewBag.Message = "Invalid Credentials";
            }
            return View();
        }

        // This method is used to display the user page after logged into the system
        public ActionResult UserPage()
        {
            if (Session["Empid"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }

        // This method is used to logout from the user page
        public ActionResult Logout()
        {
            return View();
        }

        // This method is used to store user task data into the database
        [HttpPost]
        public JsonResult List(string Task, string Type_Of_Task,string TaskDate)
        {
            
                    QTMEntities db = new QTMEntities();
                    EmpTaskList obj = new EmpTaskList();
                    DateTime dt = DateTime.Parse(TaskDate, CultureInfo.InvariantCulture);
                    obj.EmpId = Session["Empid"].ToString();
                    obj.TaskDate = dt;
                    obj.Task = Task;
                    obj.Type_Of_Task = Type_Of_Task;

                    db.EmpTaskLists.Add(obj);
                    db.SaveChanges();

            

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        // This method is used to display the list of tasks from the databse corresponding to empid
        public ActionResult Tasks()
        {
            QTMEntities ob = new QTMEntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.EmpTaskLists
                                           where (log.EmpId == empID && log.IsDeleted==0)
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status_Percentage


                                           }).ToList();
            return PartialView("TaskList", lis);
        }

       


        // This method is used to edit task of user
        [HttpPost]
        public JsonResult UpdateEmployee(EmployeeTaskModel employees)
        {
            QTMEntities entities = new QTMEntities();
            
                EmpTaskList updatedEmployee = (from c in entities.EmpTaskLists
                                                    where c.TaskId == employees.TaskId
                                                    select c).FirstOrDefault();
                updatedEmployee.Task = employees.Task;
                updatedEmployee.Type_Of_Task = employees.Type_Of_Task;
                //updatedEmployee.Start_Time = employees.Start_Time;
                //updatedEmployee.End_Time = employees.End_Time;
                updatedEmployee.Status_Percentage = employees.Status;

                entities.SaveChanges();
           

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        // This method is used to delete the task of user/employee
        [HttpPost]
        public JsonResult DeleteEmployee(int taskId)
        {
            QTMEntities entities = new QTMEntities();


            EmpTaskList deletedtedEmployee = (from c in entities.EmpTaskLists
                                              where c.TaskId == taskId
                                              select c).FirstOrDefault();
            deletedtedEmployee.IsDeleted = 1;
            entities.SaveChanges();      
            
            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        // This method is used to update the statuses in 4 quadrants
        [HttpPost]
        public JsonResult UpdateStatus(EmployeeTaskModel employees)
        {
            QTMEntities entities = new QTMEntities();

            EmpTaskList updatedEmployee = (from c in entities.EmpTaskLists
                                                where c.TaskId == employees.TaskId
                                                select c).FirstOrDefault();
            updatedEmployee.Task = employees.Task;
            updatedEmployee.Type_Of_Task = employees.Type_Of_Task;
            //updatedEmployee.Start_Time = employees.Start_Time;
            //updatedEmployee.End_Time = employees.End_Time;
            updatedEmployee.Status_Percentage = employees.Status;

            entities.SaveChanges();


            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        

        // This method is used to search the tasks based on dates
        [HttpPost]
        public ActionResult BtwSearch(string From, string To)
        {
            QTMEntities db = new QTMEntities();

            string empID = Session["Empid"].ToString();
            DateTime dt1 = DateTime.Parse(From, CultureInfo.InvariantCulture);
            DateTime dt2 = DateTime.Parse(To, CultureInfo.InvariantCulture);
            List<EmployeeTaskModel> serData = (from x in db.EmpTaskLists
                                               where ((EntityFunctions.TruncateTime(x.TaskDate) >= EntityFunctions.TruncateTime(dt1) && EntityFunctions.TruncateTime(x.TaskDate) <= EntityFunctions.TruncateTime(dt2)) && x.EmpId==empID && x.IsDeleted==0)
                                               select x).Select(x => new EmployeeTaskModel
                                               {
                                                   EmpId = x.EmpId,
                                                   TaskDate = x.TaskDate,
                                                   Task = x.Task,
                                                   TaskId = x.TaskId,
                                                   Type_Of_Task = x.Type_Of_Task,
                                                   //Start_Time = x.Start_Time,
                                                   //End_Time = x.End_Time,
                                                   Status = x.Status_Percentage
                                               }).ToList();
           
                return PartialView("TaskList", serData);
           
                                
              
        }

        // This method is used to search the task based on particular date
        [HttpPost]
        public ActionResult ParSearch(string PDate)
        {
            QTMEntities db = new QTMEntities();
            string empID = Session["Empid"].ToString();
            DateTime dt1 = DateTime.Parse(PDate, CultureInfo.InvariantCulture);
            List<EmployeeTaskModel> serData = (from log in db.EmpTaskLists
                                               where (EntityFunctions.TruncateTime(log.TaskDate) == (EntityFunctions.TruncateTime(dt1)) && log.EmpId==empID && log.IsDeleted==0 )
                                               select log).Select(x => new EmployeeTaskModel
                                               {
                                                   EmpId = x.EmpId,
                                                   TaskDate = x.TaskDate,
                                                   Task = x.Task,
                                                   TaskId = x.TaskId,
                                                   Type_Of_Task = x.Type_Of_Task,
                                                   //Start_Time = x.Start_Time,
                                                   //End_Time = x.End_Time,
                                                   Status = x.Status_Percentage
                                               }).ToList();

            return PartialView("TaskList", serData);
        }


        // This method is used to move the tasks from 4 quadrants based on user choice 
        [HttpPost]
        public JsonResult saveList(string ItemList, string TableName)
        {
            var main = ItemList.Split(',');
            QTMEntities db = new QTMEntities();
            foreach (var itm in main)
            {
                
                EmpTaskList ob = db.EmpTaskLists.Single(x => x.TaskId.ToString() == itm);
                if (ob.Quadrant_Id==null)
                {
                    ob.Quadrant_Id = TableName;
                    db.SaveChanges();
                }
                else
                {
                    return Json("no", JsonRequestBehavior.AllowGet);                    
                }

            }
            return Json("yes", JsonRequestBehavior.AllowGet);
        }
    }
}