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
    
    public partial class CurrentWorkForceTb
    {
        public int CurrentWorkforceId { get; set; }
        public int CategoryId { get; set; }
        public int SubCategoryId { get; set; }
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string Nationality { get; set; }
        public string Gender { get; set; }
        public Nullable<System.DateTime> DateofBirth { get; set; }
        public Nullable<System.DateTime> DateofHire { get; set; }
        public Nullable<int> CurrentJobTypeId { get; set; }
        public Nullable<int> CurrentSpecialityId { get; set; }
        public Nullable<int> CurrentSubSpecialityId { get; set; }
        public Nullable<int> CertifiedJobTypeId { get; set; }
        public Nullable<int> CertifiedSpecialityId { get; set; }
        public Nullable<int> CertifiedSubSpecialityId { get; set; }
        public Nullable<int> GradeId { get; set; }
        public Nullable<bool> PermanentStatus { get; set; }
        public string Program { get; set; }
        public Nullable<System.DateTime> ProgramStartDate { get; set; }
        public Nullable<double> YearlySalary { get; set; }
        public Nullable<int> NumberOfHoursPerDay { get; set; }
    }
}
