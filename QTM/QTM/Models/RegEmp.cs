using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace QTM.Models
{
    public class RegEmp
    {
        [Key]
        public int EmpId { get; set; }

        [Required(ErrorMessage ="First name required")]
        public string FirstName { get; set; }

        [Required(ErrorMessage ="Last name required")]
        public string LastName { get; set; }

        [Required(ErrorMessage ="Email is required")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required(ErrorMessage ="Password required")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Compare("Password", ErrorMessage = "Password does not match")]
        [DataType(DataType.Password)]        
        public string ConfirmPassword { get; set; }
    }
}