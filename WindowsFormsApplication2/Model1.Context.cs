﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WindowsFormsApplication2
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Model1Container : DbContext
    {
        public Model1Container()
            : base("name=Model1Container")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<UnitDimention> Unit_dimentionNumber { get; set; }
        public DbSet<Category> CategoryNumber { get; set; }
        public DbSet<ProductCompose> ProductComposeNumber { get; set; }
        public DbSet<User> UserNumber { get; set; }
        public DbSet<Person> PersonNmber { get; set; }
        public DbSet<Pasport> PasportNumber { get; set; }
        public DbSet<Post> PostNumber { get; set; }
        public DbSet<Employee> EmployeeNumber { get; set; }
        public DbSet<Duty> DutyNumber { get; set; }
        public DbSet<ChangeType> ChangeTypeНабор { get; set; }
        public DbSet<OrderStatus> OrderStatusNumber { get; set; }
        public DbSet<DeliveryType> DeliveryTypeNumber { get; set; }
        public DbSet<Store> StoreNumber { get; set; }
        public DbSet<StoreGoods> StoreGoodsNumber { get; set; }
        public DbSet<Document> DocumentNumber { get; set; }
        public DbSet<DocumentType> DocumentTypeNumber { get; set; }
        public DbSet<Adress> AdressNumber { get; set; }
        public DbSet<Place> PlaceNumber { get; set; }
        public DbSet<OrderDelivery> OrderDeliveryNumber { get; set; }
        public DbSet<Order> OrderNumber { get; set; }
        public DbSet<Nomenclature> NomenclatureНабор { get; set; }
    }
}
