<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
 <link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="style1.css">
<link rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" href="small-device.css" />
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script type="text/javascript" src="jspdf.debug.js"></script>
<meta charset="UTF-8">
<style>
  i {
            text-shadow:2px 4px 6px cyan;
        }
        .fa-check {
            font-size:80px;
            margin-left:170px;
            color:green;
        }
        .fa-apple, .fa-car {
            font-size:80px;
        }
.ap{
align:center;
margin-top:50px;
margin-left:700px;

}
table{

margin-left:50px;}
td {
  padding: 15px;
  padding-top: 10px;
  padding-bottom: 20px;
  
  padding-right: 40px;
  font-weight:900;
  color:grey;
  font-size:20px;
}
hr{
width:500px;}
</style>
<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="./js/tableExport.js"></script>
<script type="text/javascript" src="js/jquery.base64.js"></script>
<script type="text/javascript" src="js/sprintf.js"></script>
<script type="text/javascript" src="js/jspdf.js"></script>
<script type="text/javascript" src="js/base64.js"></script>
<title>Groupwise Head Count</title>

<meta name="viewport"
    content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<link rel="stylesheet" href="css/style.css" media="screen">

<!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->

<link rel="stylesheet" href="css/style.responsive.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/reports.css"/>
    <script type="text/javascript" src="js/sortable.js"></script>


<script src="js/jquery.js"></script>

<script src="js/script.js"></script>


<script type="text/javascript">
function loadTable(){
    document.getElementById('tbldiv').width=screen.availWidth;
    document.getElementById('tbldiv').height=screen.availHeight;
}
var tableToExcel = (function() {
    var uri = 'data:application/vnd.ms-excel;base64,'
      , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
      , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
      , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
    return function(table, name) {
      if (!table.nodeType) table = document.getElementById(table)
      var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
      window.location.href = uri + base64(format(template, ctx))
    }
  })()
</script>
<script type="text/javascript">
function printPDF() {
    var printDoc = new jsPDF();
    printDoc.fromHTML($('#tblGrp').get(0), 10, 10, {'width': 180});
    printDoc.autoPrint();
    printDoc.output("dataurlnewwindow"); // this opens a new popup,  after this the PDF opens the print window view but there are browser inconsistencies with how this is handled
}
    </script>
<script >
function open_win(url_add)
{
window.open(url_add,'welcome','width=300,height=200,menubar=no,status=no,location=no,toolbar=no,scrollbars=no');
}
function myNewWindow(url_add) {
    window.open(url_add, "newWindow", "height=200,width=200,status=yes,menubar=no,status=no,location=no,toolbar=no,scrollbars=no")
    }

</script>
<title>Insert title here</title>
</head>
<body>
<section id="nav-bar">

<nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="#"><img src="befiticon.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="frstpage"><h5 style="color:white;">Home </h5><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="productsbuy"><h5 style="color:white;">shop</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile"><h5 style="color:white;">profile</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="alogin"><h5 style="color:white;">admin</h5></a>
      </li>
      
      
    </ul>
  </div>
</nav>
</section>
<div class="ap">
<h1>Transaction successfull</h1>
<br>

<div class="icons"><i class="fa-solid fa-check" style="height:50px;"></i></div>
<hr><br>
<table id="tblGrp" align="center" class="sortable">
<tr>
<td>Amount</td>
<td>3800<td></tr>
<tr>
<td>Payment method</td>
<td>Debit card<td></tr>
<tr>
<td>To</td>
<td>Be.fit</td><tr>
<tr>
<td>remarks</td>
<td>Prime subscription </td><tr>
<td>Date</td>
<td>${obj}</td>
</tr>


</div>
</table>
<!--  <input type="button" onclick="tableToExcel('tblGrp', 'Groupwise Break Up')" value="Export to Excel"><input type="button" onClick ="javascript:printPDF();" value="Export to PDF"><br/>
<button onclick="demo1()">PDF</button>-->


<script type="text/javascript">
    function demo1() {
        $(function () {
            var specialElementHandlers = {
                '#editor': function (element,renderer) {
                    return true;
                }
            };
         $('#cmd').click(function () {
                var doc = new jsPDF();
                doc.fromHTML($('#htmlTableId').html(), 15, 15, {
                    'width': 170,'elementHandlers': specialElementHandlers
                });
                doc.save('sample-file.pdf');
            });  
        }); 
    }
</script>
</body>
</html>