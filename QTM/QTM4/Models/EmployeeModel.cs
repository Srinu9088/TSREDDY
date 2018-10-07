using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace QTM4.Models
{
    public class EmployeeModel
    {
        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z0-9]*$", ErrorMessage = "Enter numerical values only")]
        public string EmpId { get; set; }
        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z]*$", ErrorMessage = "Enter characters only")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z]*$", ErrorMessage = "Enter characters only")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "This field required")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required(ErrorMessage = "This field required")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required(ErrorMessage = "This field required")]
        [Compare("Password", ErrorMessage = "Password miss match")]
        [DataType(DataType.Password)]
        public string ConfirmPassword { get; set; }
    }
}