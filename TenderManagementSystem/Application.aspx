<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="TenderManagementSystem.Application" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-12">
            <div class="card">
                <div class=card-body>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Applications</h3>
                            </center>
                        </div>
                        <hr />
                    </div>
                    
                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TenderManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [application]" DeleteCommand="DELETE FROM [application] WHERE [refno] = @refno" InsertCommand="INSERT INTO [application] ([refno], [date], [experience], [cost], [phone], [email]) VALUES (@refno, @date, @experience, @cost, @phone, @email)" UpdateCommand="UPDATE [application] SET [date] = @date, [experience] = @experience, [cost] = @cost, [phone] = @phone, [email] = @email WHERE [refno] = @refno">
                            <DeleteParameters>
                                <asp:Parameter Name="refno" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="refno" Type="String" />
                                <asp:Parameter Name="date" Type="String" />
                                <asp:Parameter Name="experience" Type="String" />
                                <asp:Parameter Name="cost" Type="String" />
                                <asp:Parameter Name="phone" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="date" Type="String" />
                                <asp:Parameter Name="experience" Type="String" />
                                <asp:Parameter Name="cost" Type="String" />
                                <asp:Parameter Name="phone" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="refno" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered col" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="refno" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="refno" HeaderText="Refno" ReadOnly="True" SortExpression="refno" />
                                    <asp:BoundField DataField="date" HeaderText="Completion Date" SortExpression="date" />
                                    <asp:BoundField DataField="experience" HeaderText="Experience" SortExpression="experience" />
                                    <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                                    <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
                                    <asp:CommandField HeaderText="Delete Application" ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
