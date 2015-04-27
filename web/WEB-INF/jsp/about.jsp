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
  <%--<form id="search"><input type="text" placeholder="Filter or Search" title="Type to filter albums or press enter to search for individual photos"></form>--%>
  <h1 id="title">Oormila's paintings</h1>
</div>

<div id="content">
  <p>Oormila has been painting for over 20 years. She trained under two prominent artists, during her childhood in Kuwait.
     She published three anthologies of poetry before the age of 18.
     She has a Masters degree in English from Delhi University and has worked in both media and education.
    An expressionist who works with acrylics, she turned full time painter in 2011.</p>
  <br/>
  <p>Oormila was a war refugee in Iraq and Jordan during Operation Desert Storm.</p>
  <br/>
  <p>Oormila believes in the DIY lifestyle and swears by her two hands - she sews her own clothes, bakes and sculpts theme cakes and loves to play the piano.</p>
  <div id="footer">
    Photos by <a id="m" href="${picasa.user}">${gallery.nickname}</a>. All rights reserved. <a href="?random${fn:replace(picasa.urlSuffix, '?', '&')}">Random photo</a>.
    <br>
  </div>
</div>
</body>
</html>