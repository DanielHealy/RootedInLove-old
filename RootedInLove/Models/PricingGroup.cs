using System;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RootedInLove.Models
{
    public class PricingGroup
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string PluralName { get; set; }
        public string QuantityThreshold1 { get; set; }
        public string QuantityThresholdPrice1 { get; set; }
        public string QuantityThreshold2 { get; set; }
        public string QuantityThresholdPrice2 { get; set; }
        public string QuantityThreshold3 { get; set; }
        public string QuantityThresholdPrice3 { get; set; }
        public string QuantityThreshold4 { get; set; }
        public string QuantityThresholdPrice4 { get; set; }
        public string QuantityThreshold5 { get; set; }
        public string QuantityThresholdPrice5 { get; set; }
        public string QuantityThreshold6 { get; set; }
        public string QuantityThresholdPrice6 { get; set; }
        public virtual ICollection<Product> GroupMembers { get; set; }

    }
}