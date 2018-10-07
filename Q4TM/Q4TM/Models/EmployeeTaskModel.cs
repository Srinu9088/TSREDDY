using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Q4TM.Models
{
    public class EmployeeTaskModel
    {
        public int TaskId { get; set; }
        public string EmpId { get; set; }
        [Required(ErrorMessage ="This Field Required")]
        public System.DateTime TaskDate { get; set; }
        [Required(ErrorMessage = "This Field Required")]
        [RegularExpression("^[a-zA-Z0-9\\s\\.]+$", ErrorMessage = "Please enter characters only")]
        public string Task { get; set; }
        [Required(ErrorMessage = "This Field Required")]
        [RegularExpression("^[a-zA-Z0-9\\s\\.]+$", ErrorMessage = "Please enter characters only")]
        public string Type_Of_Task { get; set; }
        public Nullable<System.TimeSpan> Start_Time { get; set; }
        public Nullable<System.TimeSpan> End_Time { get; set; }
        public string Status { get; set; }
        public string Quadrant_Id { get; set; }
        public int IsDeleted { get; set; }
    }
}