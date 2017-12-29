<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
	<title><tiles:getAsString name="title" /></title>	
	<link href="<c:url value="/css/main.css" />" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="<c:url value="/js/moment.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/js/transition.js" />"></script>
	<script type="text/javascript" src="<c:url value="/js/collapse.js" />"></script>
	<script src="<c:url value="/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/js/bootstrap-select.js" />"></script>
	<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/css/bootstrap-datetimepicker.css" />" rel="stylesheet">
	<link href="<c:url value="/css/bootstrap-select.min.css" />" rel="stylesheet">  
	
	<link href="<c:url value="/css/affablebean.css" />" rel="stylesheet"> 
	


   <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-46914903-2', 'auto');
          ga('send', 'pageview');

        </script>
  <!-- external libs from cdnjs -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css">

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/4.1.2/papaparse.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
 <!-- Analitica para pivotjs  -->

 <!-- PivotTable.js libs from ../dist -->
<link href="<c:url value="/js/pivot/pivot.css" />" rel="stylesheet">
<script src="<c:url value="/js/pivot/jquery-ui.min.js" />"></script>
<script src="<c:url value="/js/pivot/pivot.js" />"></script>
<script src="<c:url value="/js/pivot/d3_renderers.js" />"></script>
<script src="<c:url value="/js/pivot/c3_renderers.js" />"></script>
<script src="<c:url value="/js/pivot/export_renderers.js" />"></script>
  <!-- PivotTable.js libs from ../dist -->
        
    <style type="text/css">
    body {        
        font-size: 1.2em;
    }
    </style>
    
	<style type="text/css">
		body {
			font-family: sans-serif;
		}
		.data, .data td {
			border-collapse: collapse;
			border-right: 1px solid #aaa;
			margin: 2px;
			padding: 2px;
		}
		.data th {
			font-weight: bold;
			background-color: #337ab7;
			color: white;
		}
		.form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
	</style>
</head>
 
<body>
   <div id="page-wrapper" class="container-fluid">
       <header class="navbar">
			<tiles:insertAttribute name="header" /></td>
       </header>
       <div class="container-fluid">
           <div class="left" style="width:15%;"><tiles:insertAttribute name="menu" /></div>
           <div class="left" style="width:80%;"><tiles:insertAttribute name="body" /></div>                      
       </div>
   </div>
   <footer>
       <tiles:insertAttribute name="footer" />
   </footer>
</body>
</html>