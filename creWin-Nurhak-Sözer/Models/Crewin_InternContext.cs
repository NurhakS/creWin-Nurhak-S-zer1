using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace creWin_Nurhak_Sözer.Models
{
    public partial class Crewin_InternContext : DbContext
    {
        public Crewin_InternContext()
        {
        }

        public Crewin_InternContext(DbContextOptions<Crewin_InternContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Product> Products { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=localhost;Initial Catalog=Crewin_Intern;Integrated Security=True;Encrypt=false;TrustServerCertificate=true");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Latin1_General_CI_AS");

            modelBuilder.Entity<Category>(entity =>
            {
                entity.HasKey(e => e.CategoriesId);

                entity.Property(e => e.CategoriesId).HasColumnName("Categories_id");

                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("Category_name");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.Property(e => e.ProductId).HasColumnName("Product_id");

                entity.Property(e => e.Brand)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("brand");

                entity.Property(e => e.CategoryId).HasColumnName("category_id");

                entity.Property(e => e.Description)
                    .HasColumnName("description");

                entity.Property(e => e.DiscountPercentage).HasColumnName("discountPercentage");

                entity.Property(e => e.Images).HasColumnName("images");

                entity.Property(e => e.Price).HasColumnName("price");

                entity.Property(e => e.Rating).HasColumnName("rating");

                entity.Property(e => e.Stock).HasColumnName("stock");

                entity.Property(e => e.Thumbnail).HasColumnName("thumbnail");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("title");

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.CategoryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Products_Categories");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
