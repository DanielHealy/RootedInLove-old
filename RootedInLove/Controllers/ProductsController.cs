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
    public class MaterialsController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        #region Index (Display all Materials)
        public ActionResult Index()
        {
            ViewBag.Title = "All Materials";
            return View(db.Products.ToList());
        }
        #endregion

        #region Author (Show all materials by the author in URL)
        public ActionResult Author(string id="James")
        {
            var author =
                (from people in db.Artists
                where people.ShortName == id
                select people).First();

            var product = 
                from item in db.Products
                where item.Author.ID == author.ID
                select item;

            ViewBag.Title = "Materials from "+author.FullName;
            return View("Index",product.ToList());
        }
        #endregion

        #region Details (Show details for material in URL)
        public ActionResult Details(string id="Cake")
        {
            var material =
                (from items in db.Products
                 where items.ShortName == id
                 select items).First();
          
            return View(material);
        }
        #endregion
    }
}
