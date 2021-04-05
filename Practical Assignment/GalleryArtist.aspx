﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GalleryArtist.aspx.cs" Inherits="Practical_Assignment.GalleryArtist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .DrawID {
            width: 5%;            
        }
        .Name{
            width: 2000px;
        }
        .Category{
            width: 2000px;
        }
        .Image{
            width: 2000px;
        }
        .Description{
            width: 2000px;
        }
        .Quantity{
            width: 5%;
        }
        .Price {
            width: 5%;
        }
        .Edit{
            width: 7%;
        }
        .Delete{
            width: 8%;
        }
        .tablestyle1{
            margin-left: auto; 
            margin-right: auto;
            width: 50%;
            border: 2px black;

        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Display" runat="server">
    <h1 style="text-align:center;">Manage Art</h1>
    <hr />
    <div style="text-align: center">
        <asp:Label ID="Label1" runat="server" Text="" style="font-size: x-large;"></asp:Label>   
    </div>
    <div style="margin:0 auto; width:75%; min-height:400px">
         
         <table class="table table-bordered" style="width: 100%; background-color: darkgray">
                <tr>
                    <th Class="DrawID">
                        Draw ID
                    </th>
                    <th Class="Name"> 
                        Name
                    </th>
                    <th Class="Category"> 
                        Category
                    </th>
                    <th Class="Image">
                        Image
                    </th>
                    <th Class="Description">
                        Description
                    </th>
                    <th class="Quantity">
                        Quantity
                    </th>
                    <th Class="Price">
                        Price
                    </th>
                    <th Class="Edit">
                        Edit
                    </th>
                    <th Class="Delete">
                        Delete
                    </th>
                </tr>
             </table>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="table table-bordered" style="width: 100%; background-color: lightgray" >
                
                <tr>
                    <td Class="DrawID">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("DrawID") %>'></asp:Label>
                    </td>
                    <td Class="Name">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
                    <td Class="Category">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                    </td>
                    <td Class="Image">
                        <%--<asp:Image CssClass="width1" ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="75px" Width="100px"/>--%>
                        <asp:ImageButton ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="75px" Width="100px" CommandName="ClickImage" CommandArgument='<%# Eval("DrawID") %>'/>
                    </td>
                    <td Class="Description">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                    </td>
                    <td Class="Quanntity">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                    </td>
                    <td Class="Price">
                        <asp:Label ID="Label5" runat="server" Text='<%# String.Format("RM {0:0.00}", Eval("Price")) %>'></asp:Label>
                    </td>
                    <td Class="Edit">                        
                        <asp:Button ID="Button1" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("DrawID") %>'/>
                    </td>
                    <td Class="Delete">
                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("DrawID") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Gallery.DrawID, Gallery.Name, Gallery.Description, Gallery.Total, Gallery.Price, Gallery.Image, Gallery.ArtistID, Gallery.Category FROM Artist INNER JOIN Gallery ON Artist.ArtistID = Gallery.ArtistID WHERE (Gallery.ArtistID = @ArtistID)">
        <SelectParameters>
            <asp:SessionParameter Name="ArtistID" SessionField="Value" />            
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
