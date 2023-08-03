using System;
using System.Collections.Generic;

#nullable disable

namespace creWin_Nurhak_Sözer.Models
{
    public partial class Product
    {
        public int ProductId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public double Price { get; set; }
        public double? DiscountPercentage { get; set; }
        public int? Rating { get; set; }
        public int Stock { get; set; }
        public string Brand { get; set; }
        public int CategoryId { get; set; }
        public string Thumbnail { get; set; }
        public string Images { get; set; }

        public virtual Category Category { get; set; }
    }
}
