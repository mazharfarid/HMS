using HMS.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS.Views.Beds
{
    public partial class CurrentBed : System.Web.UI.Page
    {
        public static int UpdatedId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCatagoryList();
                GetSubCatagoryList();
                GetBedTypes();
                GetAllRecords();
                MessageSucessAlert.Visible = false;
                MessageErrorAlert.Visible = false;
                DeleteEnable.Visible = false;
            }
        }

        private void GetCatagoryList()
        {
            using (HospitalManagementEntities db = new HospitalManagementEntities())
            {
                var Query = db.CategoryTbs.ToList();
                CatagoryDD.DataSource = Query;
                CatagoryDD.DataTextField = "CategoryName";
                CatagoryDD.DataValueField = "CategoryId";
                CatagoryDD.DataBind();
                CatagoryDD.Items.Insert(0, new ListItem("Choose Hospital Type", String.Empty));
                CatagoryDD.SelectedIndex = 0;
            }
        }
        private void GetSubCatagoryList()
        {
            using (HospitalManagementEntities db = new HospitalManagementEntities())
            {
                var Query = db.SubCategoryTbs.ToList();
                SubCatagoryDD.DataSource = Query;
                SubCatagoryDD.DataTextField = "HospitalName";
                SubCatagoryDD.DataValueField = "SubCategoryId";
                SubCatagoryDD.DataBind();
                SubCatagoryDD.Items.Insert(0, new ListItem("Choose Hospital Name", String.Empty));
                SubCatagoryDD.SelectedIndex = 0;
            }
        }
        private void GetBedTypes()
        {
            using (HospitalManagementEntities db = new HospitalManagementEntities())
            {
                var Query = db.BedTypesTbs.ToList();
                BedTypeDD.DataSource = Query;
                BedTypeDD.DataTextField = "BedType";
                BedTypeDD.DataValueField = "BedTypeId";
                BedTypeDD.DataBind();
                BedTypeDD.Items.Insert(0, new ListItem("Choose Bed Type", String.Empty));
                BedTypeDD.SelectedIndex = 0;
            }
        }
        private void GetAllRecords()
        {
            using (HospitalManagementEntities db = new HospitalManagementEntities())
            {
                var query = (from c in db.CurrentBedTbs
                             join d in db.CategoryTbs on c.CategoryId equals d.CategoryId
                             join s in db.SubCategoryTbs on c.SubCategoryId equals s.SubCategoryId
                             join b in db.BedTypesTbs on c.BedTypeId equals b.BedTypeId
                             select new {
                                d.CategoryName,
                                s.HospitalName,
                                c.Opex,
                                c.Count,
                                b.BedType,
                                b.BedTypeId,
                                c.CategoryId,
                                c.SubCategoryId,
                                c.CurrentBedID,
                                c.Status

                             }).ToList();
                GridViewDD.DataSource = query;
                GridViewDD.DataBind();
               
            }
        }

        protected void RowCommand(object sender, GridViewCommandEventArgs e)
        {
            UpdatedId = 0;
            DeleteEnable.Visible = true;
            if (e.CommandName == "Select")
            {
                CatagoryDD.ClearSelection();
                SubCatagoryDD.ClearSelection();
                BedTypeDD.ClearSelection();
                int Id = Convert.ToInt32(e.CommandArgument);
                UpdatedId = Convert.ToInt32( GridViewDD.Rows[Id].Cells[0].Text.ToString());
                OpexText.Text = GridViewDD.Rows[Id].Cells[4].Text.ToString();
                CountText.Text = GridViewDD.Rows[Id].Cells[5].Text.ToString();
                StatusCheckBox.Checked = Convert.ToBoolean( GridViewDD.Rows[Id].Cells[6].Text);
                CatagoryDD.Items.FindByText(GridViewDD.Rows[Id].Cells[1].Text.Trim()).Selected = true;
                SubCatagoryDD.Items.FindByText(GridViewDD.Rows[Id].Cells[2].Text.Trim()).Selected = true;
                BedTypeDD.Items.FindByText(GridViewDD.Rows[Id].Cells[3].Text.TrimEnd()).Selected = true;
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                using (HospitalManagementEntities db = new HospitalManagementEntities())
                {
                    int CurrentBedId = 1;
                    if (UpdatedId == 0)
                    {
                        var GetMaxQuery = db.CurrentBedTbs.ToList().OrderByDescending(x=>x.CurrentBedID);
                        if (GetMaxQuery!=null)
                        {
                            CurrentBedId+= GetMaxQuery.Select(x => x.CurrentBedID).FirstOrDefault();
                        }
                        CurrentBedTb currentBed = new CurrentBedTb();
                        currentBed.CurrentBedID = CurrentBedId;
                        currentBed.CategoryId = Convert.ToInt32(CatagoryDD.SelectedItem.Value);
                        currentBed.SubCategoryId = Convert.ToInt32(CatagoryDD.SelectedItem.Value);
                        currentBed.BedTypeId = Convert.ToInt32(CatagoryDD.SelectedItem.Value);
                        currentBed.Opex = OpexText.Text;
                        if (StatusCheckBox.Checked == true)
                        {
                            currentBed.Status = true;
                        }
                        else
                        {
                            currentBed.Status = false;
                        }
                        currentBed.Count = Convert.ToInt32(CountText.Text);
                        db.CurrentBedTbs.Add(currentBed);
                        db.SaveChanges();
                        MessageSucessAlert.Visible = true;
                        responseSucesss.Text = "Save Sucessfuly.";
                        UpdatedId = 0;
                        ResetForm();
                    }
                    else
                    {

                        var UpdateQuery = db.CurrentBedTbs.Where(x => x.CurrentBedID == UpdatedId).FirstOrDefault();
                        UpdateQuery.CategoryId = Convert.ToInt32(CatagoryDD.SelectedItem.Value);
                        UpdateQuery.SubCategoryId = Convert.ToInt32(CatagoryDD.SelectedItem.Value);
                        UpdateQuery.BedTypeId = Convert.ToInt32(CatagoryDD.SelectedItem.Value);
                        UpdateQuery.Opex = OpexText.Text;
                        UpdateQuery.Count = Convert.ToInt32(CountText.Text);
                        if (StatusCheckBox.Checked == true)
                        {
                            UpdateQuery.Status = true;
                        }
                        else
                        {
                            UpdateQuery.Status = false;
                        }
                        db.SaveChanges();
                        MessageSucessAlert.Visible = true;
                        responseSucesss.Text = "Save Sucessfuly.";
                        UpdatedId = 0;
                        ResetForm();
                        DeleteEnable.Visible = false;
                    }
                }
                    
            }
            catch (Exception ex)
            {
                MessageErrorAlert.Visible = true;
                MessageErrorAlert.InnerText = ex.ToString();
            }
        }

        protected void GridViewDD_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewDD.PageIndex = e.NewPageIndex;
            GridViewDD.DataBind();
            GetAllRecords();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            using (HospitalManagementEntities db = new HospitalManagementEntities())
            {
                var DeleteQuery = db.CurrentBedTbs.Where(x => x.CurrentBedID == UpdatedId).FirstOrDefault();
                if (DeleteQuery != null)
                {
                    db.CurrentBedTbs.Remove(DeleteQuery);
                    db.SaveChanges();
                    DeleteEnable.Visible = false;
                  
                    ResetForm();
                }
            }
        }

        private void ResetForm()
        {
            CountText.Text = "0";
            OpexText.Text = "";
            GetCatagoryList();
            GetSubCatagoryList();
            GetBedTypes();
            GetAllRecords();

        }
    }
}