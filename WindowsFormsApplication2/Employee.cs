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
    
    public partial class Employee
    {
        public Employee()
        {
            this.Duty = new HashSet<Duty>();
        }
    
        public int Post_idPost { get; set; }
        public string firstDate { get; set; }
        public string lastDate { get; set; }
        public string workbookNum { get; set; }
        public int Person_idPerson { get; set; }
    
        public virtual Post Post { get; set; }
        public virtual Person Person { get; set; }
        public virtual ICollection<Duty> Duty { get; set; }
    }
}