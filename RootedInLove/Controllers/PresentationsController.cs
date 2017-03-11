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
    public class PresentationsController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        #region Index (Display all Presentations)
        public ActionResult Index()
        {
            ViewBag.Title = "All Presentations";
            return View(db.Presentations.ToList());
        }
        #endregion

        #region Author (Show all presentations by the author in URL)
        public ActionResult Author(string id = "James")
        {
            var author =
                (from people in db.Artists
                 where people.ShortName == id
                 select people).First();

            var presentation =
                from item in db.Presentations
                where item.Presenter.ID == author.ID
                select item;

            ViewBag.Title = "Presentations by " + author.FullName;
            return View("Index", presentation.ToList());
        }
        #endregion

        #region Details (Show details for Presentation in URL)
        public ActionResult Details(string id = "Happiness")
        {
            var presentation =
                (from items in db.Presentations
                 where items.ShortName == id
                 select items).First();

            return View(presentation);
        }
        #endregion
    }
}
