using System;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace RootedInLove.Models
{
    public class Presentation
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string PDFDownloadLink { get; set; }
        public virtual Artist Presenter { get; set; }
        public string ShortName { get; set; }

    }
}