using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QTM4.Models;
using PagedList;
using PagedList.Mvc;

namespace QTM4.Controllers
{
    public class QTMController : Controller
    {
        // GET: QTM
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult Register()
        { 
            return View();
        }

        public ActionResult Q4TM()
        {
            return View();
        }

        public ActionResult IUTasks()
        {
            TSREntities ob = new TSREntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.TasksImpUrgs
                                           where log.EmpId == empID
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status


                                           }).ToList();
            return PartialView("IUList", lis);
        }

        public ActionResult INUTasks()
        {
            TSREntities ob = new TSREntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.TasksImpNurgs
                                           where log.EmpId == empID
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status


                                           }).ToList();
            return PartialView("INUList", lis);
        }

        public ActionResult NIUTasks()
        {
            TSREntities ob = new TSREntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.TasksNimpUrgs
                                           where log.EmpId == empID
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status


                                           }).ToList();
            return PartialView("NIUList", lis);
        }

        public ActionResult NINUTasks()
        {
            TSREntities ob = new TSREntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.TasksNimpNurgs
                                           where log.EmpId == empID
                                           select log).Select(x => new EmployeeTaskModel
                                           {
                                               EmpId = x.EmpId,
                                               TaskDate = x.TaskDate,
                                               Task = x.Task,
                                               TaskId = x.TaskId,
                                               Type_Of_Task = x.Type_Of_Task,
                                               //Start_Time = x.Start_Time,
                                               //End_Time = x.End_Time,
                                               Status = x.Status


                                           }).ToList();
            return PartialView("NINUList", lis);
        }

        [HttpPost]
        public ActionResult Register(Employee obj)
        {
            if (ModelState != null)
            {
                TSREntities data = new TSREntities();
                data.Employees.Add(obj);
                data.SaveChanges();
            }
            ViewBag.Message = obj.FirstName + " " + obj.LastName + " " + "Successfully Registerd";
            ModelState.Clear();
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Employee obj)
        {
            TSREntities db = new TSREntities();
            var user = db.Employees.SingleOrDefault(u => u.EmpId == obj.EmpId && u.Password == obj.Password);
            if(user!=null)
            {
                Session["Empid"] = user.EmpId.ToString();
                Session["Fname"] = user.FirstName.ToString();
                Session["Lname"] = user.LastName.ToString();
                return RedirectToAction("UserPage");
            }
            else
            {
                ViewBag.Message="Invalid Credentials";
            }
            return View();
        }

        public ActionResult UserPage()
        {
            if(Session["Empid"]!=null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }


        public ActionResult Logout()
        {
            return View();
        }

        [HttpPost]
        public JsonResult List(EmployeeTaskModel model)
        {
           
                    TSREntities db = new TSREntities();
                    EmployeeTaskList obj = new EmployeeTaskList();
                    //DateTime dt = DateTime.Parse(TaskDate, CultureInfo.InvariantCulture);
                    obj.EmpId = Session["Empid"].ToString();
                    obj.TaskDate = model.TaskDate;
                    obj.Task = model.Task;
                    obj.Type_Of_Task = model.Type_Of_Task;

                    db.EmployeeTaskLists.Add(obj);
                    db.SaveChanges();
           

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        
        public ActionResult Tasks()
        {
           
            TSREntities ob = new TSREntities();
            string empID = Session["Empid"].ToString();
            List<EmployeeTaskModel> lis = (from log in ob.EmployeeTaskLists
                                                 where log.EmpId == empID
                                                 select log).Select(x => new EmployeeTaskModel
                                                 {
                                                     EmpId = x.EmpId,
                                                     TaskDate = x.TaskDate,
                                                     Task = x.Task,
                                                     TaskId = x.TaskId,
                                                     Type_Of_Task = x.Type_Of_Task,
                                                     //Start_Time = x.Start_Time,
                                                     //End_Time = x.End_Time,
                                                     Status = x.Status


                                                 }).ToList();
            return PartialView("TaskList",lis);
        }

        [HttpPost]
        public JsonResult saveList(string ItemList, string TableName)
        {
            TSREntities db = new TSREntities();
            var main = ItemList.Split(',');  // Split the taskids
            switch(TableName)
            {
                case "IU":
                    foreach (var itm in main)
                    {
                        EmployeeTaskList ob = db.EmployeeTaskLists.Single(x => x.TaskId.ToString() == itm);
                        TasksImpUrg ob1 = new TasksImpUrg();
                        if (ob.Flag == 1)
                        {
                            return Json("no", JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            ob1.EmpId = ob.EmpId;
                            ob1.TaskId = ob.TaskId;
                            ob1.TaskDate = ob.TaskDate;
                            ob1.Task = ob.Task;
                            ob1.Type_Of_Task = ob.Type_Of_Task;
                            //ob1.Start_Time = ob.Start_Time;
                            //ob1.End_Time = ob.End_Time;
                            ob1.Status = ob.Status;
                            db.TasksImpUrgs.Add(ob1);
                            ob.Flag = 1;
                            db.SaveChanges();
                        }

                    }
                    break;
                case "INU":
                    foreach (var itm in main)
                    {
                        EmployeeTaskList ob = db.EmployeeTaskLists.Single(x => x.TaskId.ToString() == itm);
                        TasksImpNurg ob1 = new TasksImpNurg();
                        if (ob.Flag == 1)
                        {
                            return Json("no", JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            ob1.EmpId = ob.EmpId;
                            ob1.TaskId = ob.TaskId;
                            ob1.TaskDate = ob.TaskDate;
                            ob1.Task = ob.Task;
                            ob1.Type_Of_Task = ob.Type_Of_Task;
                            //ob1.Start_Time = ob.Start_Time;
                            //ob1.End_Time = ob.End_Time;
                            ob1.Status = ob.Status;
                            db.TasksImpNurgs.Add(ob1);
                            ob.Flag = 1;
                            db.SaveChanges();
                        }

                    }
                    break;
                case "NIU":
                    foreach (var itm in main)
                    {
                        EmployeeTaskList ob = db.EmployeeTaskLists.Single(x => x.TaskId.ToString() == itm);
                        TasksNimpUrg ob1 = new TasksNimpUrg();
                        if (ob.Flag == 1)
                        {
                            return Json("no", JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            ob1.EmpId = ob.EmpId;
                            ob1.TaskId = ob.TaskId;
                            ob1.TaskDate = ob.TaskDate;
                            ob1.Task = ob.Task;
                            ob1.Type_Of_Task = ob.Type_Of_Task;
                            //ob1.Start_Time = ob.Start_Time;
                            //ob1.End_Time = ob.End_Time;
                            ob1.Status = ob.Status;
                            db.TasksNimpUrgs.Add(ob1);
                            ob.Flag = 1;
                            db.SaveChanges();
                        }

                    }
                    break;
                case "NINU":
                    foreach (var itm in main)
                    {
                        EmployeeTaskList ob = db.EmployeeTaskLists.Single(x => x.TaskId.ToString() == itm);
                        TasksNimpNurg ob1 = new TasksNimpNurg();
                        if (ob.Flag == 1)
                        {
                            return Json("no", JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            ob1.EmpId = ob.EmpId;
                            ob1.TaskId = ob.TaskId;
                            ob1.TaskDate = ob.TaskDate;
                            ob1.Task = ob.Task;
                            ob1.Type_Of_Task = ob.Type_Of_Task;
                            //ob1.Start_Time = ob.Start_Time;
                            //ob1.End_Time = ob.End_Time;
                            ob1.Status = ob.Status;
                            db.TasksNimpNurgs.Add(ob1);
                            ob.Flag = 1;
                            db.SaveChanges();
                        }

                    }
                    break;
                default:
                    break;
            }

           
            return Json("yes", JsonRequestBehavior.AllowGet);
        }

       

        [HttpPost]
        public JsonResult UpdateEmployee(EmployeeTaskModel employees)
        {
            using (TSREntities entities = new TSREntities())
            {
                EmployeeTaskList updatedEmployee = (from c in entities.EmployeeTaskLists
                                            where c.TaskId == employees.TaskId
                                            select c).FirstOrDefault();
                updatedEmployee.Task=employees.Task;
                updatedEmployee.Type_Of_Task=employees.Type_Of_Task;
                //updatedEmployee.Start_Time = employees.Start_Time;
                //updatedEmployee.End_Time = employees.End_Time;
                updatedEmployee.Status = employees.Status;

                entities.SaveChanges();
            }

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteEmployee(int taskId)
        {
            TSREntities entities = new TSREntities();

            TasksImpUrg IU = (from c in entities.TasksImpUrgs
                              where c.TaskId == taskId
                              select c).FirstOrDefault();

            TasksImpNurg INU = (from c in entities.TasksImpNurgs
                                where c.TaskId == taskId
                                select c).FirstOrDefault();

            TasksNimpUrg NIU = (from c in entities.TasksNimpUrgs
                                where c.TaskId == taskId
                                select c).FirstOrDefault();

            TasksNimpNurg NINU = (from c in entities.TasksNimpNurgs
                                  where c.TaskId == taskId
                                  select c).FirstOrDefault();

            EmployeeTaskList deletedtedEmployee = (from c in entities.EmployeeTaskLists
                                                   where c.TaskId == taskId
                                                   select c).FirstOrDefault();
            entities.EmployeeTaskLists.Remove(deletedtedEmployee);

            if (IU != null)
            {
                entities.TasksImpUrgs.Remove(IU);
            }
            if (INU != null)
            {
                entities.TasksImpNurgs.Remove(INU);
            }

            if (NIU != null)
            {
                entities.TasksNimpUrgs.Remove(NIU);
            }
            if (NINU != null)
            {
                entities.TasksNimpNurgs.Remove(NINU);
            }
                entities.SaveChanges();


            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult UpdateIU(EmployeeTaskModel employees)
        {
            TSREntities entities = new TSREntities();
            
                TasksImpUrg updatedEmployee = (from c in entities.TasksImpUrgs
                                                    where c.TaskId == employees.TaskId
                                                    select c).FirstOrDefault();
                updatedEmployee.Task = employees.Task;
                updatedEmployee.Type_Of_Task = employees.Type_Of_Task;
                //updatedEmployee.Start_Time = employees.Start_Time;
                //updatedEmployee.End_Time = employees.End_Time;
                updatedEmployee.Status = employees.Status;

                entities.SaveChanges();
            

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        
        [HttpPost]
        public JsonResult UpdateINU(EmployeeTaskModel employees)
        {
            using (TSREntities entities = new TSREntities())
            {
                TasksImpNurg updatedEmployee = (from c in entities.TasksImpNurgs
                                                    where c.TaskId == employees.TaskId
                                                    select c).FirstOrDefault();
                updatedEmployee.Task = employees.Task;
                updatedEmployee.Type_Of_Task = employees.Type_Of_Task;
                //updatedEmployee.Start_Time = employees.Start_Time;
                //updatedEmployee.End_Time = employees.End_Time;
                updatedEmployee.Status = employees.Status;

                entities.SaveChanges();
            }

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

       
        [HttpPost]
        public JsonResult UpdateNIU(EmployeeTaskModel employees)
        {
            using (TSREntities entities = new TSREntities())
            {
                TasksNimpUrg updatedEmployee = (from c in entities.TasksNimpUrgs
                                                    where c.TaskId == employees.TaskId
                                                    select c).FirstOrDefault();
                updatedEmployee.Task = employees.Task;
                updatedEmployee.Type_Of_Task = employees.Type_Of_Task;
                //updatedEmployee.Start_Time = employees.Start_Time;
                //updatedEmployee.End_Time = employees.End_Time;
                updatedEmployee.Status = employees.Status;

                entities.SaveChanges();
            }

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

       
        [HttpPost]
        public JsonResult UpdateNINU(EmployeeTaskModel employees)
        {
            using (TSREntities entities = new TSREntities())
            {
                TasksNimpNurg updatedEmployee = (from c in entities.TasksNimpNurgs
                                                    where c.TaskId == employees.TaskId
                                                    select c).FirstOrDefault();
                updatedEmployee.Task = employees.Task;
                updatedEmployee.Type_Of_Task = employees.Type_Of_Task;
                //updatedEmployee.Start_Time = employees.Start_Time;
                //updatedEmployee.End_Time = employees.End_Time;
                updatedEmployee.Status = employees.Status;

                entities.SaveChanges();
            }

            return Json("yes", JsonRequestBehavior.AllowGet);
        }

        
        [HttpPost]
        public ActionResult BtwSearch(string From, string To)
        {
            TSREntities db = new TSREntities();
            string empID = Session["Empid"].ToString();

            DateTime dt1 = DateTime.Parse(From, CultureInfo.InvariantCulture);
            DateTime dt2 = DateTime.Parse(To, CultureInfo.InvariantCulture);
            List<EmployeeTaskModel> serData = (from x in db.EmployeeTaskLists
                           where ((EntityFunctions.TruncateTime(x.TaskDate) >= EntityFunctions.TruncateTime(dt1) && EntityFunctions.TruncateTime(x.TaskDate) <= EntityFunctions.TruncateTime(dt2)) && x.EmpId==empID )
                           select x).Select(x => new EmployeeTaskModel
                           {
                               EmpId = x.EmpId,
                               TaskDate = x.TaskDate,
                               Task = x.Task,
                               TaskId = x.TaskId,
                               Type_Of_Task = x.Type_Of_Task,
                               //Start_Time = x.Start_Time,
                               //End_Time = x.End_Time,
                               Status = x.Status
                           }).ToList();
                     
            
            return PartialView("TaskList",serData);
        }

        [HttpPost]
        public ActionResult ParSearch(string PDate)
        {
            TSREntities db = new TSREntities();
            string empID = Session["Empid"].ToString();
            DateTime dt1 = DateTime.Parse(PDate, CultureInfo.InvariantCulture);
            List<EmployeeTaskModel> serData = (from log in db.EmployeeTaskLists
                       where ((EntityFunctions.TruncateTime(log.TaskDate) == EntityFunctions.TruncateTime(dt1)) && (log.EmpId==empID))
                       select log).Select(x => new EmployeeTaskModel
                       {
                           EmpId = x.EmpId,
                           TaskDate = x.TaskDate,
                           Task = x.Task,
                           TaskId = x.TaskId,
                           Type_Of_Task = x.Type_Of_Task,
                           //Start_Time = x.Start_Time,
                           //End_Time = x.End_Time,
                           Status = x.Status
                       }).ToList();

            return PartialView("TaskList", serData);
        }

        //[HttpPost]
        //public ActionResult SearchIU(DateTime PIUdate)
        //{
        //    TSREntities db = new TSREntities();
            
        //    //DateTime dt1 = DateTime.Parse(From, CultureInfo.InvariantCulture);
            
        //    List<EmployeeTaskModel> IUData = (from log in db.TasksImpUrgs
        //               where (EntityFunctions.TruncateTime(log.TaskDate) == EntityFunctions.TruncateTime(PIUdate))
        //               select log).Select(x => new EmployeeTaskModel
        //               {
        //                   EmpId = x.EmpId,
        //                   TaskDate = x.TaskDate,
        //                   Task = x.Task,
        //                   TaskId = x.TaskId,
        //                   Type_Of_Task = x.Type_Of_Task,
        //                   //Start_Time = x.Start_Time,
        //                   //End_Time = x.End_Time,
        //                   Status = x.Status
        //               }).ToList();
        //    return PartialView("IUList", IUData);
        //}
    }
}