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
    
    public partial class ProductCompose
    {
        public string quantity { get; set; }
        public int UnitDimentionName { get; set; }
        public int Nomenclature_idNom { get; set; }
        public int Nomenclature_idNom1 { get; set; }
    
        public virtual UnitDimention UnitDimention { get; set; }
        public virtual Nomenclature Nomenclature { get; set; }
        public virtual Nomenclature Nomenclature1 { get; set; }
    }
}