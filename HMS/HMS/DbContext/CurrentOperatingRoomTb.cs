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
    
    public partial class CurrentOperatingRoomTb
    {
        public int OperatingRoomRecordId { get; set; }
        public int CategoryId { get; set; }
        public int SubCategoryId { get; set; }
        public Nullable<int> OperatingRoomId { get; set; }
        public Nullable<int> DailyOperatingHours { get; set; }
        public Nullable<int> OperationalDaysPerWeek { get; set; }
        public Nullable<int> DownTime { get; set; }
        public Nullable<double> Price { get; set; }
        public string Opex { get; set; }
    }
}