<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Log_Book.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/site.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/><script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title></title>
</head>
<body onload="startTime()">
    <div class="nav">
        <a id="title">Log Book</a>
        
        <a class="Home">Home</a>
        <a class="log">View Log Book</a>
        <a class="ho">Home Owners</a>
        <a class="logout" onclick="logout()">Logout</a>



    </div>
    
        <div id="content">
            <div id="time"">
                <center>
                <h1 id="txt"></h1>
                <h1 id="date"></h1>

            </div>
        </div>
    <script>


        function logout()
        {
            swal({
                title: "Are you sure",
                text: "you want to logout?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((vbool) => {
                    if (vbool) {
                        swal("Logout Success", {
                            icon: "success",
                        }).then((value) => {
                            window.location.href = "/index.aspx";
                        });
                    }
                });
        }

        function startTime() {
            var today = new Date();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();
            m = checkTime(m);
            s = checkTime(s);
            document.getElementById('txt').innerHTML =
                h + ":" + m + ":" + s;

            var arr = [
                "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
            ];

            var datevalue = arr[(today.getMonth())] + ' ' + today.getDate() + ', ' + today.getFullYear();
            document.getElementById('date').innerHTML = datevalue;
            var t = setTimeout(startTime, 500);
        }

        function checkTime(i) {
            if (i < 10) { i = "0" + i };  // add zero in front of numbers < 10
            return i;
        }
    </script>


</body>
</html>
