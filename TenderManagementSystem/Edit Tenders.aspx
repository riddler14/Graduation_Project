<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit Tenders.aspx.cs" Inherits="TenderManagementSystem.Edit_Tenders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        flex: 0 0 auto;
        width: 100%;
        height: 206px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Tenders</h4>
                        </center>
                     </div>
                  </div>
                                     <div class="row">
                                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TenderManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [Tenders]" DeleteCommand="DELETE FROM [Tenders] WHERE [RefNo] = @RefNo" InsertCommand="INSERT INTO [Tenders] ([RefNo], [Company], [description], [category], [cost], [submission_deadline], [downloaddeadline], [tenderclosingdate], [downloadcost], [duration_of_contract], [email], [full_address], [payment]) VALUES (@RefNo, @Company, @description, @category, @cost, @submission_deadline, @downloaddeadline, @tenderclosingdate, @downloadcost, @duration_of_contract, @email, @full_address, @payment)" UpdateCommand="UPDATE [Tenders] SET [Company] = @Company, [description] = @description, [category] = @category, [cost] = @cost, [submission_deadline] = @submission_deadline, [downloaddeadline] = @downloaddeadline, [tenderclosingdate] = @tenderclosingdate, [downloadcost] = @downloadcost, [duration_of_contract] = @duration_of_contract, [email] = @email, [full_address] = @full_address, [payment] = @payment WHERE [RefNo] = @RefNo">
                                             <DeleteParameters>
                                                 <asp:Parameter Name="RefNo" Type="String" />
                                             </DeleteParameters>
                                             <InsertParameters>
                                                 <asp:Parameter Name="RefNo" Type="String" />
                                                 <asp:Parameter Name="Company" Type="String" />
                                                 <asp:Parameter Name="description" Type="String" />
                                                 <asp:Parameter Name="category" Type="String" />
                                                 <asp:Parameter Name="cost" Type="String" />
                                                 <asp:Parameter Name="submission_deadline" Type="String" />
                                                 <asp:Parameter Name="downloaddeadline" Type="String" />
                                                 <asp:Parameter Name="tenderclosingdate" Type="String" />
                                                 <asp:Parameter Name="downloadcost" Type="String" />
                                                 <asp:Parameter Name="duration_of_contract" Type="String" />
                                                 <asp:Parameter Name="email" Type="String" />
                                                 <asp:Parameter Name="full_address" Type="String" />
                                                 <asp:Parameter Name="payment" Type="String" />
                                             </InsertParameters>
                                             <UpdateParameters>
                                                 <asp:Parameter Name="Company" Type="String" />
                                                 <asp:Parameter Name="description" Type="String" />
                                                 <asp:Parameter Name="category" Type="String" />
                                                 <asp:Parameter Name="cost" Type="String" />
                                                 <asp:Parameter Name="submission_deadline" Type="String" />
                                                 <asp:Parameter Name="downloaddeadline" Type="String" />
                                                 <asp:Parameter Name="tenderclosingdate" Type="String" />
                                                 <asp:Parameter Name="downloadcost" Type="String" />
                                                 <asp:Parameter Name="duration_of_contract" Type="String" />
                                                 <asp:Parameter Name="email" Type="String" />
                                                 <asp:Parameter Name="full_address" Type="String" />
                                                 <asp:Parameter Name="payment" Type="String" />
                                                 <asp:Parameter Name="RefNo" Type="String" />
                                             </UpdateParameters>
                                         </asp:SqlDataSource>
                                          <div class=col>
                                              <asp:GridView class="table table-striped table-bordered col" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RefNo" DataSourceID="SqlDataSource1">
                                                  <Columns>
                                                      <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
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
                                                      <asp:CommandField ShowDeleteButton="True" />
                                                  </Columns>
                                              </asp:GridView>
                                               <hr />
                     </div>
                  </div>
                   </div>
                </div>
        </div>
        </div>
    &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;
     &nbsp;

</asp:Content>
