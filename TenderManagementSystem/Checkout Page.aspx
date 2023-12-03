<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout Page.aspx.cs" Inherits="TenderManagementSystem.Checkout_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Apply For Tender</h4>
                        </center>
                     </div>
                  </div>
                   <hr />
                   <div class="row">
                       <div class="col-md-6">
                          <label>Ref ID</label>
                           <div class="form-group">
                               <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Ref ID" TextMode="Number"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>
                       </div>
                   
                   
                       <div class="col-md-6">
                          <label>Name</label>
                           <div class="form-group">
                               <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Completion Date" TextMode="Date"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                           &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Text Only" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                           </div>
                       </div>
                       </div>
                        <div class="row">
                             <div class="col-md-6">
                          <label>E-Mail ID</label>
                           <div class="form-group">
                               <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Experience" TextMode="Number"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                           &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid E-Mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                           </div>
                       </div>
                            <div class="col-md-6">
                                &nbsp;<label>Phone</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                             <div class="col-md-6">
                                 <label>
                                 Enter Amount</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="E-Mail " TextMode="Number" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;</div>
                             </div>
                            </div>
                   <br />
                 

                   <div class="row">
                     <div class="col-md-12">
                         <center>
                        <asp:Button ID="Button2" class="btn btn-success col-md-12" runat="server" Text="PAY" OnClick="Button2_Click1" />
                             </center>
                     </div>
                   </div>


                </div>
             </div>
       </div>
       </div>
</asp:Content>
