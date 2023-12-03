<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Issuer Tender Issuing.aspx.cs" Inherits="TenderManagementSystem.Issuer_Tender_Issuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Tender Issuing</h4>
                        </center>
                     </div>
                  </div>
    <div class="row">
                     <div class="col">
                        <center>
                            <img src="Imgs/pngwing.com.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Ref ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Ref ID" TextMode="Number"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                     </div>
                     <div class="col-md-6">
                        <label>Inviting Authority</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                           </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Text Only" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Details" TextMode="MultiLine"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                     </div>
                     <div class="col-md-6">
                        <label>Category</label>
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="235px">
                             <asp:ListItem Text="Gardens" Value="Gardens" />
                              <asp:ListItem Text="Roadwork" Value="Roadwork" />
                              <asp:ListItem Text="Sewer" Value="Sewer" />
                                <asp:ListItem Text="Footpaths" Value="Footpaths" />
                            </asp:DropDownList>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Tender Cost</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Cost(in Rs)" TextMode="Number"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                     </div>
                     <div class="col-md-6">
                        <label>Last Date Of Submission</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Submission Deadline" TextMode="Date"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Download OF Tender Upto</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Last Date for Download Document" TextMode="Date"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                     </div>
                     <div class="col-md-6">
                        <label>Tender Closng Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Submission Deadline" TextMode="Date"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Apply Cost</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Cost(in Rs)" TextMode="Number"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                     </div>
                     <div class="col-md-6">
                         <label> Duration Of Contract</label>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Duration(in Months)" TextMode="Number"></asp:TextBox>
                        </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                     </div>
                  </div>
                   <div class="row">
                       <div class="col-md-6">
                           <label>E-Mail</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="E-Mail Address" TextMode="Email" ></asp:TextBox>
                           </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                       &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                       </div>
                       <div class="col-md-6">
                           <label>Postal-Address</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                           </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col-md-12">
                           <div class="form-group">
                           <label>Payment ID(GPay)</label>
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server"></asp:TextBox>
                               </div>
                       </div> &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>
                   <br />

                   <div class="row">
                     <div class="col-md-12">
                         <center>
                        <asp:Button ID="Button2" class="btn btn-success col-md-12" runat="server" Text="Issue" OnClick="Button2_Click" />
                             </center>
                     </div>
                     <div class="col-6">
                     </div>
                  </div>
               </div>
            </div>
            <a href="Homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
          <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Issued Tender List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TenderManagementSystemConnectionString %>" SelectCommand="SELECT [RefNo], [Company], [category], [cost], [submission_deadline], [duration_of_contract] FROM [Tenders]"></asp:SqlDataSource>



                     <div class="col">
                         <asp:GridView class="table table-striped table-bordered col" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RefNo" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:BoundField DataField="RefNo" HeaderText="RefNo" ReadOnly="True" SortExpression="RefNo" />
                                 <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                                 <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                                 <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                                 <asp:BoundField DataField="submission_deadline" HeaderText="Submission Deadline" SortExpression="submission_deadline" />
                                 <asp:BoundField DataField="duration_of_contract" HeaderText="Duration Of Contract" SortExpression="duration_of_contract" />
                             </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
