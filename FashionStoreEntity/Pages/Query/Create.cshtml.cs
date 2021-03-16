using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using FashionStoreEntity.DataClass;
using FashionStoreEntity.Models;

namespace FashionStoreEntity.Pages.Query
{
    public class CreateModel : PageModel
    {
        private readonly FashionStoreEntity.Models.FashionStoreEntityContext _context;

        public CreateModel(FashionStoreEntity.Models.FashionStoreEntityContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Contact Contact { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Contact.Add(Contact);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}