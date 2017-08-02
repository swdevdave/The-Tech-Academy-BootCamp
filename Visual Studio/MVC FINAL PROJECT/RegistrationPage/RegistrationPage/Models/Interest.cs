using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RegistrationPage.Models
{
    public class Interest
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public ICollection<User> Users { get; set; }
    }
}