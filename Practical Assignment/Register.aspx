﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Practical_Assignment.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
            text-decoration:underline;

        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 39px;
        }
        table {
            border-collapse: collapse;
            border: 1px solid #e6e6e6;
            height: auto;
            width :700px;
            margin:0% 25% 0% 25%;
        }
        .btnType{
            text-align:center;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Display" runat="server">

    <asp:MultiView ID="SignUpMultiView" runat="server">
  
        <asp:View ID="View1" runat="server">

            <table>
                <tr>
                    <td><h1 style="text-align:center">Account Type</h1><hr/></td>
                </tr>
                <tr>
                    <td>
          
                </tr>
                <tr>
                    <td class="btnType">
                        <asp:Button ID="btnArtist" runat="server" Text="Artist" Width="400px" Height="50px" style="border-color: #4D94FF; background-color: white; color: #284E98;" OnClick="btnArtist_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                       <h2>&nbsp;</h2></td>
                </tr>
                <tr>
                    <td class="btnType">
                        <asp:Button ID="btnCustomer" runat="server" style="border-color: #4D94FF; background-color: white; color: #284E98;" OnClick="btnCustomer_Click" Text="Customer" BorderColor="blue" Width="400" Height="50"/>
                    </td>
                </tr>
                <tr>
                    <td class="btnType">&nbsp;</td>
                </tr>
            </table>
        </asp:View>

        <asp:View ID="View2" runat="server">
        <table>
            <tr style ="border:50px">
                <td class="auto-style1"><h1>
                    Registration</h1></td>
            </tr>
            <tr>
                <td class="auto-style2">Please fill in the registration form. 
                    <br /><hr />
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    Email:</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="abc@gmail.com" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Username:</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Goofy"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Password:</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Confirm Password:</td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">

                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" style="border-color: #4D94FF; margin-right:50px; background-color: white; color: #284E98;" OnClick="btnCancel_Click" />
                    <asp:Button ID="btnRegister" runat="server" Text="Register" style="border-color: #4D94FF;  white; color: #284E98;" OnClick="btnRegister_Click" />
                    
                </td>
            </tr>
        </table>
        </asp:View>
        </asp:MultiView>

</asp:Content>
