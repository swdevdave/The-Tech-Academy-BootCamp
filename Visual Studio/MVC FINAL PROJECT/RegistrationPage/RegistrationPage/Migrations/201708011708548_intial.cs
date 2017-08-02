namespace RegistrationPage.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class intial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Interests",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserName = c.String(),
                        Password = c.String(),
                        FirstName = c.String(),
                        LastName = c.String(),
                        About = c.String(),
                        RememberMe = c.Boolean(nullable: false),
                        Gender = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.UserInterests",
                c => new
                    {
                        User_Id = c.Int(nullable: false),
                        Interest_Id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.User_Id, t.Interest_Id })
                .ForeignKey("dbo.Users", t => t.User_Id, cascadeDelete: true)
                .ForeignKey("dbo.Interests", t => t.Interest_Id, cascadeDelete: true)
                .Index(t => t.User_Id)
                .Index(t => t.Interest_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.UserInterests", "Interest_Id", "dbo.Interests");
            DropForeignKey("dbo.UserInterests", "User_Id", "dbo.Users");
            DropIndex("dbo.UserInterests", new[] { "Interest_Id" });
            DropIndex("dbo.UserInterests", new[] { "User_Id" });
            DropTable("dbo.UserInterests");
            DropTable("dbo.Users");
            DropTable("dbo.Interests");
        }
    }
}
