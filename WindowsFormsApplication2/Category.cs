//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Category
    {
        public Category()
        {
            this.Nomenclature = new HashSet<Nomenclature>();
        }
    
        public int idCategory { get; set; }
        public string name { get; set; }
        public string menuPresence { get; set; }
        public string description { get; set; }
    
        public virtual ICollection<Nomenclature> Nomenclature { get; set; }
    }
}