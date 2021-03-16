using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using FashionStoreEntity.DataClass;
using FashionStoreEntity.Models;

namespace FashionStoreEntity.Pages.AddProduct
{
    public class IndexModel : PageModel
    {
        private readonly FashionStoreEntity.Models.FashionStoreEntityContext _context;

        public IndexModel(FashionStoreEntity.Models.FashionStoreEntityContext context)
        {
            _context = context;
        }

        public IList<Product> Product { get;set; }

        public async Task OnGetAsync()
        {
            Product = await _context.Product.ToListAsync();
        }
    }
}
