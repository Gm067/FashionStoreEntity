using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FashionStoreEntity.DataClass
{
    public class Product
    {

        public int id { get; set; }

        [Display(Name = "Name")]
        public string Name { get; set; }

        [Display(Name = "Price")]
        public string Price { get; set; }

        [Display(Name = "Quantity")]
        public string Qty { get; set; }

    }
}
