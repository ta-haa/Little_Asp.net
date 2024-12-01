<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.Master" AutoEventWireup="true" CodeBehind="userpage.aspx.cs" Inherits="website.userpage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
    <script>
        var cltime = 10;
        setInterval("captchalogintime()", 1000)
        function captchalogintime() {
            document.getElementById("logintime").innerHTML = cltime;
            cltime--;
            if (cltime == 0) {
                cltime = 10;
                let uniquechar = "";
                const crandomchar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

                for (let i = 1; i <= 5; i++) {
                    uniquechar += crandomchar.charAt(
                        Math.random() * crandomchar.length)
                }

                document.getElementById("logincaptcha").innerHTML = uniquechar;
                document.getElementById("logincaptcha").value = uniquechar;
            }
        }

    </script>
     <script>
         var cstime = 10;
         setInterval("captchasignintime()", 1000)
         function captchasignintime() {
             document.getElementById("signintime").innerHTML = cstime;


             cstime--;
             if (cstime == 0) {
                 cstime = 10;
                 let uniquechar = "";
                 const crandomchar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

                 for (let i = 1; i <= 5; i++) {
                     uniquechar += crandomchar.charAt(
                         Math.random() * crandomchar.length)
                 }

                 document.getElementById("<%= lblsignincaptcha %>").innerHTML = uniquechar;
                 document.getElementById("<%= lblsignincaptcha %>").value = uniquechar;

             }
         }

     </script>

    <div class="welcome" style="width: 500px; height: 0px; font: bold 30px comic sans ms; position: fixed; left: 3%; border-radius: 10px; top: 3%; background-color: none; color: white">
        <asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label>
    </div>
    <form method="post" id="form1" runat="server">
        <div class="enterloginpanel" id="loginpanel">
            <div class="loginclose" onclick="loginclose()">x &nbsp</div>
            <asp:Label ID="lblloginmesaj" runat="server" Text="" Style="color: red; font: bold 20px comic sans ms"></asp:Label>
            <div id="logintime"  Style="color: red; font: bold 20px comic sans ms"></div>
            <br />
            <br />
            <asp:TextBox class="loginname" ID="txtloginname" runat="server" placeholder="Name"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="logineposta" ID="txtlogineposta" runat="server" TextMode="Email" placeholder="Mail"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="loginpassword" ID="txtloginpassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="logincaptcha" ID="txtlogincaptcha" runat="server" placeholder="Captcha"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="lbllogincaptcha" runat="server" Text="" Style="color: red; font: bold 20px comic sans ms"></asp:Label>
            <div id="logincaptcha" Style="color: red; font: bold 20px comic sans ms"></div>
            



            <br />
            <br />
            <asp:Button class="loginbutton" ID="btnlogin" runat="server" Text="Login" OnClick="btnclicklogin" />
        </div>


        <div class="signinpanel" id="signinpanel">
            <div class="signinclose" onclick="signinclose()">x &nbsp</div>
            <asp:Label ID="lblsigninmesaj" runat="server" Text=""></asp:Label>
            <div id="signintime"  Style="color: red; font: bold 20px comic sans ms"></div>
            <br />
            <br />
            <asp:TextBox class="signinname" ID="txtsigninname" runat="server" placeholder="Name"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="signineposta" ID="txtsignineposta" runat="server" TextMode="Email" placeholder="Mail"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="signinpassword" ID="txtsigninpassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox class="signincaptcha" ID="txtsignincaptcha" runat="server" placeholder="Captcha"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="lblsignincaptcha" runat="server" Style="color: red; font: bold 20px comic sans ms" ClientIDMode="Inherit"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


            <br />
            <br />
            <asp:Button class="signinbutton" ID="btnsignin" runat="server" Text="Sign in" OnClick="btnclicksignin" />
        </div>
    </form>
</asp:Content>

