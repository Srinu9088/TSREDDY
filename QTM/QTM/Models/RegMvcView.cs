using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace QTM.Models
{
  
    public partial class RegMvcView
    {

        public int Id { get; set; }
        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z]*$", ErrorMessage = "Please enter characters only")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "This field required")]
        [RegularExpression("^[a-zA-Z]*$", ErrorMessage = "Please enter characters only")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Email required")]
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
