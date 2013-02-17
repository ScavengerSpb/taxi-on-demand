<%--
  Created by IntelliJ IDEA.
  User: Scavenger
  Date: 17.02.13
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Taxi"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>
<div class="header" role="contentinfo"></div>
<g:layoutBody/>
<div class="footer" role="contentinfo"></div>
<r:layoutResources />
</body>
</html>