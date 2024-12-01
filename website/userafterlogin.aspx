<%@ Page Title="" Language="C#" MasterPageFile="~/userafterlogin.Master" AutoEventWireup="true" CodeBehind="userafterlogin.aspx.cs" Inherits="website.userafterlogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="welcome" style="width: 500px; height: 0px; font: bold 30px comic sans ms; position: fixed; left: 3%; border-radius: 10px; top: 3%; background-color: none;color:white">
        <asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div class="signinpanel" id="signinpanel">
            <div class="signinclose" onclick="signinclose()">x &nbsp</div>
            <asp:Label ID="lblsigninmesaj" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:TextBox class="signinname" ID="txtsigninname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="signineposta" ID="txtsignineposta" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="signinpassword" ID="txtsigninpassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />


            // captcha 

            <br />
            <br />
            <asp:Button class="signinbutton" ID="btnsignin" runat="server" Text="Sign in" OnClick="btnclicklogin" />
        </div>
    </form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
