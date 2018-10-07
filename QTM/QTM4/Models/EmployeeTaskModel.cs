using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace QTM4.Models
{
    public class EmployeeTaskModel
    {
        public int TaskId { get; set; }
        public string EmpId { get; set; }
        [Required(ErrorMessage ="This field required")]
        public System.DateTime TaskDate { get; set; }
        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z\\s\\.]*$",ErrorMessage ="Please enter characters only")]
        public string Task { get; set; }
        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z\\s\\.]*$", ErrorMessage = "Please enter characters only")]
        public string Type_Of_Task { get; set; }
        public Nullable<System.TimeSpan> Start_Time { get; set; }
        public Nullable<System.TimeSpan> End_Time { get; set; }
        public string Status { get; set; }

    }   
}