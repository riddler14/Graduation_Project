﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CallUsBack.aspx.cs" Inherits="TenderManagementSystem.CallUsBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div class="container">
            <div class="jumbotron">
                <h1 runat="server" id="h1Message"></h1>
                    <p runat="server" id="pTxnId"></p>
                        <p runat="server" id="pMode"></p>


            </div>
        </div>
    
</asp:Content>
