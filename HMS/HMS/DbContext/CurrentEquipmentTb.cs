//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HMS.DbContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class CurrentEquipmentTb
    {
        public int CurrentEquipmentId { get; set; }
        public int CategoryId { get; set; }
        public int SubCategoryId { get; set; }
        public string EquipmentTypeId { get; set; }
        public int DailyOperatingHours { get; set; }
        public int OperationalHoursPerDay { get; set; }
        public int Downtime { get; set; }
        public System.DateTime DateofPurchase { get; set; }
        public Nullable<double> Price { get; set; }
        public string Opex { get; set; }
    }
}
