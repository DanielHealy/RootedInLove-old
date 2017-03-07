using System;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RootedInLove.Models
{
    public class Product
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public virtual PricingGroup category { get; set; }
        public string Image { get; set; }
        public string AddToCartLink { get; set; }
        public string GooglePlayLink { get; set; }
        public string ShortName { get; set; }
        public virtual Artist Author { get; set; } 
    }
}