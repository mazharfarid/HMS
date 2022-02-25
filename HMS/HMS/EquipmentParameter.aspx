<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EquipmentParameter.aspx.cs" Inherits="HMS.EquipmentParameter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <form runat="server">
    <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Equipment Parameters</h3>
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
                   <input type="email" class="form-control" id="exampleInputEmail1" TextMode="Number" placeholder="Equipment Type Id">
                      
                   
                  </div>
                   </div>
                   <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Average Life Time</label>
                       <asp:TextBox runat="server"  placeholder="Average Life Time"  ID="OpexText" CssClass="form-control" ></asp:TextBox>
                    </div>
                  
                   
                  </div>
               </div> 
                  <div class="row">
                   <div class="col-md-6">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Status</label>
                   <asp:CheckBox runat="server"  placeholder="Opex"  ID="StatusCheckBox" CssClass="form-control" ></asp:CheckBox>
                   
                  </div>
                   </div>
                   <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Count</label>
                       <asp:TextBox runat="server"  placeholder="Count" TextMode="Number" ID="CountText" CssClass="form-control" ></asp:TextBox>
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
                             <asp:BoundField DataField="CategoryName" HeaderText="Catagory" />
                             <asp:BoundField DataField="HospitalName" HeaderText="Sub Catagory" />
                             <asp:BoundField DataField="BedType" HeaderText="Bed Type" />
                             <asp:BoundField DataField="Opex" HeaderText="Opex" />
                             <asp:BoundField DataField="Count" HeaderText="Count" />
                             <asp:CommandField ShowSelectButton="True" />
                         </Columns>
                     </asp:GridView>
                 </div>

             </div>
           </form>
</asp:Content>
