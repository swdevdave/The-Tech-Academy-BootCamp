using PasswordSecurity;
using RegistrationPage.Models;
using System.Linq;
using System.Web.Mvc;

namespace RegistrationPage.Controllers
{
    public class RegisterController : Controller
    {
        private RegistrationPageContext db = new RegistrationPageContext();
        // GET: Register
        public ActionResult Index()
        {
            var model = db.Interests.ToList();
            ViewBag.intrest = new MultiSelectList(model,"Id","Name");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(User user, int[] Interests)
        {
            if (Interests !=null)
            {
                foreach (var item in Interests)
                {
                    Interest interest = db.Interests.Find(item);
                    user.Interests.Add(interest);
                }

                user.Password = PasswordStorage.CreateHash(user.Password);
                db.Users.Add(user);
                db.SaveChanges();
                return Redirect("~/Submitted.aspx");

            }
            return RedirectToAction("Index");
        }
    }
}