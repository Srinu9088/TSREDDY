using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Q4TM.Models
{
    public class EmployeeModel
    {
        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z0-9]*$", ErrorMessage = "Enter numerical values only")]
        public string EmpId { get; set; }
        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z\\s]*$", ErrorMessage = "Enter characters only")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z\\s]*$", ErrorMessage = "Enter characters only")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "This field required")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required(ErrorMessage = "This field required")]
        [RegularExpression("((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})",ErrorMessage ="Password must contains one upper,lower letter and one number(minimum 6 to 20 characters)")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required(ErrorMessage = "This field required")]
        [Compare("Password", ErrorMessage = "Password miss match")]
        [DataType(DataType.Password)]
        public string ConfirmPassword { get; set; }
    }
}