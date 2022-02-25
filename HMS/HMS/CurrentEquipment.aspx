<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CurrentEquipment.aspx.cs" Inherits="HMS.CurrentEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
    <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Current Equipment</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
             
                <div class="card-body">
               <div class="row">
                   <div class="col-md-6">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Hospital Type</label>
                   <%-- <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                      <asp:DropDownList CssClass="form-control" runat="server" ID="CatagoryDD"></asp:DropDownList>
                   
                  </div>
                   </div>
                   <div class="col-md-6">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Hospital Name</label>
                   <%-- <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                      <asp:DropDownList CssClass="form-control" runat="server" ID="SubCatagoryDD"></asp:DropDownList>
                   
                  </div>
               </div> </div>
                     <div class="row">
                  
                   <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Equipment Type Id</label>
                       <asp:TextBox runat="server"  placeholder="Equipment Type Id"  ID="TypeIdText" CssClass="form-control" ></asp:TextBox>
                    </div>
                  </div>
                         <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Daily Operational Hours</label>
                       <asp:TextBox runat="server"  placeholder="Daily Operational Hours"  ID="DailyOperationalHoursText" CssClass="form-control" ></asp:TextBox>
                    </div>
                  </div>

               </div> 
                  <div class="row">
                   <div class="col-md-6">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Operational Hours Per Day</label>
                   <asp:TextBox runat="server"  placeholder="Operational Hours Per Day"  ID="OperationalHoursPerDayText" CssClass="form-control" ></asp:TextBox>
                   
                  </div>
                   </div>
                   <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Down Time</label>
                       <asp:TextBox runat="server"  placeholder="Down Time" TextMode="Number" ID="CountText" CssClass="form-control" ></asp:TextBox>
                    </div>
                  
                   
                  </div>
               </div> 
                 
                       <div class="row">
                   <div class="col-md-4">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Date of Purchase</label>
                   <asp:TextBox runat="server"  placeholder="Date of Purchase"  TextMode="Date" ID="DateofPurchaseText" CssClass="form-control" ></asp:TextBox>
                   
                  </div>
                   </div>
                   <div class="col-md-4">
                <div class="form-group">
                    <label for="exampleInputEmail1">Price</label>
                       <asp:TextBox runat="server"  placeholder="Price" TextMode="Number" ID="PriceText" CssClass="form-control" ></asp:TextBox>
                    </div>
                  
                   
                  </div>
                           <div class="col-md-4">
                <div class="form-group">
                    <label for="exampleInputEmail1">Opex</label>
                       <asp:TextBox runat="server"  placeholder="Count"  ID="OpexText" CssClass="form-control" ></asp:TextBox>
                    </div>
                  
                   
                  </div>
               </div> 
                  </div>
                
          </div>      
                <!-- /.card-body -->
                    
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
         <br />
           
             <div class="card card-primary">
              <div class="card-header">
                  </div>
                 <div class="card-body">
                     <asp:GridView CssClass="table table-head-fixed text-nowrap" runat="server" ID="GridViewDD" AutoGenerateColumns="False">
                         <Columns>
                             <asp:BoundField DataField="CurrentBedID" HeaderText="Bed Id" />
                             <asp:BoundField DataField="CategoryName" HeaderText="Catagory" />
                             <asp:BoundField DataField="HospitalName" HeaderText="Sub Catagory" />
                             <asp:BoundField DataField="BedType" HeaderText="Bed Type" />
                             <asp:BoundField DataField="Opex" HeaderText="Opex" />
                             <asp:BoundField DataField="Count" HeaderText="Count" />
                             <asp:BoundField DataField="CatagoryId" HeaderText="CatagoryId" Visible="False" />
                             <asp:BoundField DataField="SubCatagoryId" HeaderText="SubCatagoryId" Visible="False" />
                             <asp:BoundField DataField="BedTypeId" HeaderText="BedTypeId" Visible="False" />
                             <asp:CommandField ShowSelectButton="True" />
                         </Columns>
                     </asp:GridView>
                 </div>

             </div>
           </form>
</asp:Content>
