using System;
using System.Collections.Generic;

#nullable disable

namespace creWin_Nurhak_Sözer.Models
{
    public partial class Category
    {
        public Category()
        {
            Products = new HashSet<Product>();
        }

        public int CategoriesId { get; set; }
        public string CategoryName { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
