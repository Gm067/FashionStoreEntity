using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FashionStoreEntity.DataClass
{
    public class Sale
    {

        public int id { get; set; }

        [Display(Name = "Name")]
        public string Name { get; set; }

        [Display(Name = "Mobile")]
        public string Mobile { get; set; }

        [Display(Name = "Product")]
        public string Product { get; set; }

        [Display(Name = "Bill")]
        public int Bill { get; set; }

        [Display(Name = "Date")]
        public string Billdate { get; set; }


    }
}
