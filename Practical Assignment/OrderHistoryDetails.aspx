﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OrderHistoryDetails.aspx.cs" Inherits="Practical_Assignment.OrderHistoryDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .title{
            width:16%;
            padding:5%;
            text-align:center;
        }

      .tableFormat {
            border-collapse: collapse;
            border-color: white;
            margin-left: 10%;
            margin-right: 10%;
            background-color:darkgray;
            width:1200px;
            height: auto;
            margin-bottom:3%;
        }

       .tableFormat2 {
            border-collapse: collapse;
            border-color: white;
            background-color:lightgray;
            width:1200px;
            height: auto;
            margin-left: 10%;
            margin-right: 10%;
        }
        
       .width1 {
            width: 16%;
            padding: 5%;
            text-align:center;
        }


    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Display" runat="server">
    <h1 style="text-align:center">Details</h1><hr />
    <div style="margin-left: 8%; margin-right: 8%;">
     <table class="table table-bordered" style="width: 100%; background-color: darkgray">
                <tr>
                    <th class="title">
                        DrawID
                    </th>

                    <th class="title">
                        OrderID
                    </th>

                    <th class="title">
                        Quantity
                    </th>
                    <th class="title">
                        Price
                    </th>
                    <th class="title">
                        Name
                    </th>
                    <th class="title">
                        Image
                    </th>
                </tr>
        </table>

    <asp:DataList ID="DataList1" runat="server" CssStyle="Display : flex"  DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound" Width="100%">
        <ItemTemplate>
            <table class="table table-bordered" style="width: 100%; background-color: lightgray">
            <tr>
            <td class="width1">
            <asp:Label ID="DrawIDLabel" CssClass="title" runat="server" Text='<%# Eval("DrawID") %>' />
            </td>
            <td class="width1">
            <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
            </td>
            <td class="width1" >
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
            </td>
            <td class="width1">
            <asp:Label ID="PriceLabel" runat="server" Text='<%# String.Format("RM {0:0.00}",Eval("Price")) %>' />
            </td>
            <td class="width1">
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            </td>
            <td class="width1">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>'  Height="100px" Width="100px"/>
            </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Gallery.DrawID, OrderDetails.OrderID, OrderDetails.[Quantity], OrderDetails.Price, Gallery.Name, Gallery.Image FROM Gallery INNER JOIN OrderDetails ON Gallery.DrawID = OrderDetails.DrawID WHERE (OrderDetails.OrderID = @OrderID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="OrderID" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
