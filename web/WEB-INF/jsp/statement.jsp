<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="gallery" scope="request" type="com.google.gdata.data.photos.UserFeed"/>

<!DOCTYPE html>
<html>
<head>
  <title>Oormila Creative Studio</title>
  <c:if test="${mobile}">
    <meta name="viewport" content="width=700, user-scalable=no">
  </c:if>
  <meta name="description" content="${gallery.nickname} photo albums from around the World">
  <meta name="keywords" content="${gallery.nickname},photos,picasa,picasaweb,gallery,albums,travel,photography">
  <meta property="og:title" content="${gallery.nickname} Photography">
  <meta property="og:type" content="website">
  <meta property="og:image" content="${gallery.albumEntries[0].mediaThumbnails[0].url}">
  <meta property="og:site_name" content="${gallery.nickname} Photography">
  <%@include file="head.jsp" %>
</head>

<body style="color: gray">

<div id="header" class="header">
  <ul>
    <li><a href="/">Gallery</a></li>
    <li><a href="/statement">Artist Statement</a></li>
    <li><a href="/about">About</a></li>
  </ul>
</div>

<div id="content">
  <p>For me, painting is about placing a beautiful filter on everything I view; seeing even the mundane through rose tinted glasses. I paint everyday, common things, but try to represent them in scintillating light, through the use of vibrant hues and multi directional strokes.</p>
  <br/>
  <p>I am particularly drawn to painting nature, especially trees and water. There is something magical about the phenomena of the physical world, a complexity that often transcends understanding. I find being in nature, soothing and therapeutic. When I paint en plain air, I try to capture the essence of these pleasant experiences on canvas.</p>
  <br/>
  <p>I am currently working towards an exhibition and am putting together a body of work inspired by the scenes of Sydney, both natural and urban. </p>
  <div id="footer">
    Photos by <a id="m" href="${picasa.user}">${gallery.nickname}</a>. All rights reserved. <a href="?random${fn:replace(picasa.urlSuffix, '?', '&')}">Random photo</a>.
    <br>
  </div>
</div>
</body>
</html>
