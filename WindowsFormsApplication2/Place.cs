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
    
    public partial class Place
    {
        public Place()
        {
            this.Order = new HashSet<Order>();
        }
    
        public int id { get; set; }
        public string description { get; set; }
    
        public virtual ICollection<Order> Order { get; set; }
    }
}