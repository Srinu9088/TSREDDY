using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Q4TM.Models
{
    public class EmployeeLoginModel
    {
        [Required(ErrorMessage = "This field required")]
        public string EmpId { get; set; }

        [Required(ErrorMessage = "This field required")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }
}