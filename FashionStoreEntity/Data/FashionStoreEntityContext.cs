using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using FashionStoreEntity.DataClass;

namespace FashionStoreEntity.Models
{
    public class FashionStoreEntityContext : DbContext
    {
        public FashionStoreEntityContext (DbContextOptions<FashionStoreEntityContext> options)
            : base(options)
        {
        }

        public DbSet<FashionStoreEntity.DataClass.Product> Product { get; set; }

        public DbSet<FashionStoreEntity.DataClass.Contact> Contact { get; set; }

        public DbSet<FashionStoreEntity.DataClass.Sale> Sale { get; set; }
    }
}
