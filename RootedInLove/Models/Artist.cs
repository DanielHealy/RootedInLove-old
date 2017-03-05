using System;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RootedInLove.Models
{
    public class Artist
    {
        public int ID { get; set; }
        public string ShortName { get; set; }
        public string FullName { get; set; }
        public string AboutDescription { get; set; }
        public string Image { get; set; }
        public string GooglePlayLink { get; set; }
        public virtual ICollection<Product> Products { get; set; }
        public virtual ICollection<Presentation> Presentations { get; set; } 

    }
}