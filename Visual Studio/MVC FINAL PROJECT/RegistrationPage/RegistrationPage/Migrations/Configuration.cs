namespace RegistrationPage.Migrations
{
    using RegistrationPage.Models;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<RegistrationPageContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(RegistrationPageContext context)
        {
            context.Users.AddOrUpdate(p => p.UserName, new User
            {
                UserName = "ImFirst",
                Password = "123",
                FirstName = "Dave",
                LastName = "King",
                About = "This is me",
                RememberMe = true,
                Gender = "Male",
            });

            context.Interests.AddOrUpdate (
                p => p.Id,
                new Interest { Name = "Coding" },
                new Interest { Name = "Math" },
                new Interest { Name = "Reading" },
                new Interest { Name = "Sports" }
                );
     
        }
    }
}
