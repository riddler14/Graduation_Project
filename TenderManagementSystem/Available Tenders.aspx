<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Available Tenders.aspx.cs" Inherits="TenderManagementSystem.Apply_For_Tender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Tenders</h4>
                        </center>
                     </div>
                      <hr />
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TenderManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [Tenders]"></asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table-bordered col" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RefNo" DataSourceID="SqlDataSource1" >
                             
                             <Columns>
                                 <asp:HyperLinkField HeaderText="Apply" NavigateUrl="~/Apply Tender.aspx" Text="Apply" />
                                 <asp:BoundField DataField="RefNo" HeaderText="RefNo" ReadOnly="True" SortExpression="RefNo" />
                                 <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                                 <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                 <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                                 <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                                 <asp:BoundField DataField="submission_deadline" HeaderText="Submission Deadline" SortExpression="submission_deadline" />
                                 <asp:BoundField DataField="downloaddeadline" HeaderText="Apply Deadline" SortExpression="downloaddeadline" />
                                 <asp:BoundField DataField="tenderclosingdate" HeaderText="Tender Closing Date" SortExpression="tenderclosingdate" />
                                 <asp:BoundField DataField="downloadcost" HeaderText="Apply Cost" SortExpression="downloadcost" />
                                 <asp:BoundField DataField="duration_of_contract" HeaderText="Duration Of Contract" SortExpression="duration_of_contract" />
                                 <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
                                 <asp:BoundField DataField="full_address" HeaderText="Full Address" SortExpression="full_address" />
                                 <asp:BoundField DataField="payment" HeaderText="Payment" SortExpression="payment" />
                             </Columns>
                            
                         </asp:GridView>
                        <hr>
                     </div>
                  </div>
                   </div>
                </div>
        </div>
</asp:Content>
