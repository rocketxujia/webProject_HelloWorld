<%@ page import="sample.Hello" %>
<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: xujia01
  Date: 12-5-28
  Time: 下午2:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> hello world sample</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body> test test
<h2 class="message">
</h2>
today is <% Date d = new Date(); %>  <%= d.toString()%> t

<div id="ajaxTest" class="region"> you can click here.</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
<script type="text/javascript">
    $.getScript("ScriptAction", function (data, textStatus, jqxhr) {
        console.log(postObject); //data returned
        console.log(type); //data returned
    });

    $("#ajaxTest").click(function (e) {
        var _this = this;
        e.stopPropagation();
        $.ajax({
          type: "POST",
          dataType:'json',
          url: "AjaxAction",
          data: { name: "John", location: "Boston" }
        }).done(function( msg ) {
           $(_this).html(msg.mydata[0].name);
        });
    });
</script>
</body>
</html>