<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Log_Book.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/site.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/><script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title></title>
</head>
<body>
    <div class="nav">
        <a id="title">Log Book</a>
        <asp:HyperLink class="option" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
        <asp:HyperLink class="option" runat="server" NavigateUrl="~/index.aspx">Login</asp:HyperLink>
        

    </div>



    <center>
    <form id="signup">
          <div class="form-group" style="text-align: left">
            <label for="exampleInputEmail1">Username</label>
            <input type="email" class="form-control" id="uname"aria-describedby="emailHelp" placeholder="Enter your username here">
            <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
          </div>
        
          <div id="firstname" class="form-group" style="text-align: left">
            <label for="exampleInputEmail1">First name</label>
            <input type="email" class="form-control" id="fname" aria-describedby="emailHelp" placeholder="Enter your first name here">
          </div>

        
        
          <div id="lastname" class="form-group" style="text-align: left">
            <label for="exampleInputEmail1">Last name</label>
            <input type="email" class="form-control" id="lname"  aria-describedby="emailHelp" placeholder="Enter your last name here">
          </div>

        
        
          <div id="middlename" class="form-group" style="text-align: left">
            <label for="exampleInputEmail1">Middle name</label>
            <input type="email" class="form-control" id="mname"  aria-describedby="emailHelp" placeholder="Enter your middle name here">
          </div>

        
          <div id="pass" class="form-group" style="text-align: left">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control"  id="pass" placeholder="Enter your password here">
          </div>

          <div id="confirm password" class="form-group" style="text-align: left">
            <label for="exampleInputPassword1"> Confirm Password</label>
            <input type="password" class="form-control"  id="pass" placeholder="Confirm your password here">
          </div>

        <div class="form-group" style="text-align: left">
        <input type="date" id="date">
        </div>
        
          <div class="form-group" style="text-align: left">
          <input type="radio" id="male" name="gender" value="male">
          <label for="male">Male</label><br>
          <input type="radio" id="female" name="gender" value="female">
          <label for="female">Female</label><br>
          </div>
          
        <button type="button" class="btn btn-primary" onclick="register()" >Submit</button>


    </form>
    <script>
        function register() {
            
            let uname = document.getElementById("uname").value;
            let lname = document.getElementById("lname").value;
            let fname = document.getElementById("fname").value;
            let mname = document.getElementById("mname").value;
            let pass = document.getElementById("pass").value; 


            if (uname != "" && lname != "" && fname != "" && mname != "" && pass != "") {
                localStorage.setItem("uname", uname);
                localStorage.setItem("lname", lname);
                localStorage.setItem("fname", fname);
                localStorage.setItem("mname", mname);
                localStorage.setItem("pass", pass);
                swal("Good job!", "You clicked the button!", "success").then((value) => {
                    window.location.href = "/index.aspx";
                });
            }
            else {
                swal("", "Fill out all Fields", "warning");
            }
        }
    </script>
</body>
</html>
