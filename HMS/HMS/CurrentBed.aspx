<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/CurrentBed.aspx.cs" Inherits="HMS.Views.Beds.CurrentBed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">
    <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add New Bed</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
             
                <div class="card-body">
                
                       <div runat="server" id="MessageErrorAlert" >
            <div class="alert alert-danger alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <h5><i class="icon fas fa-ban"></i> Alert!</h5>
                 

                <asp:Label ID="responseError" runat="server" Text=""></asp:Label>

                </div>
                 
        </div>
                    <div runat="server" id="MessageSucessAlert">
                                    <div class="alert alert-success  alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <h5><i class="icon fas fa-ban"></i> Alert!</h5>
                   
                                       <asp:Label ID="responseSucesss" runat="server" Text=""></asp:Label>
                </div>
                    </div>
               <div class="row">
                   <div class="col-md-6">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Hospital Type</label>
                   <%-- <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                      <asp:DropDownList AutoPostBack="true" CssClass="form-control" runat="server" ID="CatagoryDD"></asp:DropDownList>
                   
                  </div>
                   </div>
                   <div class="col-md-6">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Hospital Name</label>
                   <%-- <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                      <asp:DropDownList AutoPostBack="true" CssClass="form-control" runat="server" ID="SubCatagoryDD"></asp:DropDownList>
                   
                  </div>
               </div> </div>
                     <div class="row">
                   <div class="col-md-6">
                         <div class="form-group">
                    <label for="exampleInputEmail1">Bed Type</label>
                   <%-- <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                      <asp:DropDownList AutoPostBack="true" CssClass="form-control" runat="server" ID="BedTypeDD"></asp:DropDownList>
                   
                  </div>
                   </div>
                   <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Opex</label>
                       <asp:TextBox runat="server"  placeholder="Opex"  ID="OpexText" CssClass="form-control" ></asp:TextBox>
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
                    <div class="row text-left">
                        <div class="col-md-2">
                              <asp:Button runat="server" CssClass="btn btn-primary btn-block" ID="SubmitBtn" Text="Submit" OnClick="SubmitBtn_Click" />
                        </div>
                          <div class="col-md-2">
                              
                   <div id="DeleteEnable" runat="server">
                       <button type="button" class="btn btn-danger btn-block" data-toggle="modal" data-target="#modal-default">
                     Delete Record
                </button>
                   </div>
                          </div>
                        <div class="col-md-8"></div>
                    </div>
                 
                </div>
         <br />
           
             <div class="card card-primary">
              <div class="card-header">
                  </div>
                 <div class="card-body">
                     <asp:GridView OnRowCommand="RowCommand" CssClass="table table-head-fixed text-nowrap" runat="server" ID="GridViewDD" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridViewDD_PageIndexChanging" PageSize="100">
                         <Columns>
                             <asp:BoundField DataField="CurrentBedID" HeaderText="BedID" />
                             <asp:BoundField DataField="CategoryName" HeaderText="Catagory" />
                             <asp:BoundField DataField="HospitalName" HeaderText="Sub Catagory" />
                             <asp:BoundField DataField="BedType" HeaderText="Bed Type" />
                             <asp:BoundField DataField="Opex" HeaderText="Opex" />
                             <asp:BoundField DataField="Count" HeaderText="Count" />
<asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                             <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" Visible="False" />
                             <asp:BoundField DataField="SubCategoryId" HeaderText="SubCatagoryId" Visible="False" />
                             <asp:BoundField DataField="BedTypeId" HeaderText="BedTypeId" Visible="False" />
                             <asp:CommandField ShowSelectButton="True" />
                         </Columns>
                     </asp:GridView>
                 </div>

             </div>
           

     <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Confirmation</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p>Are you sure to delete..</p>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
   
                <asp:Button OnClick="Delete_Click" runat="server" Text="Delete" ID="DeleteBtn" CssClass="btn btn-danger" />
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
         </form>
</asp:Content>
