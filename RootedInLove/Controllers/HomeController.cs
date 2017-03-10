using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RootedInLove.Models;

namespace RootedInLove.Controllers
{
    public class HomeController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About(string id = "James")
        {
            var author =
                (from people in db.Artists
                 where people.ShortName == id
                 select people).First();

            return View(author);
        }

        public ActionResult Contact()
        {
            return View();
        }
    }
}