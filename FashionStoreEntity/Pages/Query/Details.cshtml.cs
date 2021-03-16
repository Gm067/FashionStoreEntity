using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using FashionStoreEntity.DataClass;
using FashionStoreEntity.Models;

namespace FashionStoreEntity.Pages.Query
{
    public class DetailsModel : PageModel
    {
        private readonly FashionStoreEntity.Models.FashionStoreEntityContext _context;

        public DetailsModel(FashionStoreEntity.Models.FashionStoreEntityContext context)
        {
            _context = context;
        }

        public Contact Contact { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Contact = await _context.Contact.FirstOrDefaultAsync(m => m.id == id);

            if (Contact == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
