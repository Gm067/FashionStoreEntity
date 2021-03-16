using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using FashionStoreEntity.DataClass;
using FashionStoreEntity.Models;

namespace FashionStoreEntity.Pages.Selling
{
    public class DeleteModel : PageModel
    {
        private readonly FashionStoreEntity.Models.FashionStoreEntityContext _context;

        public DeleteModel(FashionStoreEntity.Models.FashionStoreEntityContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Sale Sale { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Sale = await _context.Sale.FirstOrDefaultAsync(m => m.id == id);

            if (Sale == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Sale = await _context.Sale.FindAsync(id);

            if (Sale != null)
            {
                _context.Sale.Remove(Sale);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
