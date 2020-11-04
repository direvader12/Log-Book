<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Log_Book.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/site.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title></title>
    
</head>
<body>
    <div class="nav">
        <a id="title">Log Book</a>
        <asp:HyperLink class="option" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
        <asp:HyperLink class="option" runat="server" NavigateUrl="~/index.aspx">Login</asp:HyperLink>
        

    </div>
    <!--comment-->
    <div id="formlogin">
        <center>
        <div class="inputlogo">
                <img src="usernamelogo.png" style="width: 150px; height: 150px" id="loginicon"/>
        </div>
        <div class="inputlabel">
             <img src="icons8-username-32.png" class="inputicon"/>
             <input type="text" placeholder="Username" id="username" />
        </div>
        <div class="inputlabel">
             <img src="pass.png" class="inputicon"/>
             <input type="password" placeholder="Password" id="password" />
        </div>
        <div class="inputlabel">
            <button onclick="home()">Submit</button>
        </div>
    </div>

    <script>
        function home() {
            var uname = localStorage.getItem("uname");
            var pass = localStorage.getItem("pass");
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            if (uname == uname && pass == password) {
                swal("Good job!", "Success", "success").then((value) => {
                    window.location.href = "/Home.aspx";
                });
            }
            else {
                swal("", "Incorrect username or password", "warning");
            }
        }
    </script>
</body>
</html>
