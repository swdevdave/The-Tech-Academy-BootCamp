using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RegistrationPage.Models
{
    public class User
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string About { get; set; }
        public bool RememberMe { get; set; }
        public string Gender { get; set; }
        public ICollection<Interest> Interests { get; set; }
    }
}