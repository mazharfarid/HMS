<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BedParameters.aspx.cs" Inherits="HMS.BedParameters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <form runat="server">
    <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Bed Parameters</h3>
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
                    <label for="exampleInputEmail1">Bed Type</label>
                   <%-- <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                      <asp:DropDownList CssClass="form-control" runat="server" ID="BedTypeDD"></asp:DropDownList>
                   
                  </div>
                   </div>
                   <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Decommission Rate</label>
                       <asp:TextBox runat="server"  placeholder="Decomission Rate"  ID="OpexText" TextMode="Number" CssClass="form-control" ></asp:TextBox>
                    </div>
                                     
                  </div>
               </div> 
                  <div class="row">
                
                   <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Closure Rate</label>
                       <asp:TextBox runat="server"  placeholder="Closure Rate" TextMode="Number" ID="CountText" CssClass="form-control" ></asp:TextBox>
                    </div>
                  
                   
                  </div>
                         <div class="col-md-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">Price of Bed</label>
                       <asp:TextBox runat="server"  placeholder="Price of Bed" TextMode="Number" ID="TextBox1" CssClass="form-control" ></asp:TextBox>
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
