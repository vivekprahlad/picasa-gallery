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
    <li><a href="/about">About</a></li>
  </ul>
</div>

<div id="content">
  <img src="/img/oormila.jpg" style="margin-left: auto;margin-right: auto;display: block">
  <br/>
  <br/>
  <p>Oormila is an expressionist, who has been painting in Acrylics for over 20 years. She finds inspiration in her surroundings and many of her paintings are inspired by the places in which she has lived. She likes to paint with energetic strokes and bright, bold color, celebrating beauty in her art. </p>
  <br/>
  <p>Oormila was a war refugee in Iraq and Jordan during Operation Desert Storm.She has a Masters degree in English from Delhi University and has worked in both media and education.</p>
  <br/>
  <p>Oormila believes in the DIY lifestyle - she sews her own clothes, bakes and sculpts theme cakes and loves to play the piano.</p>
  <br/>
  <br/>
  <p>Solo exhibitions:</p>
  <p>August 2002, Painted Platters, CMH Road, Bangalore</p>
  <br/>
  <p>Group exhibitions:</p>
  <br/>
  <p>August 2005, Gallery G, Bangalore</p>
  <p>January 2014, The Substation, Aremian Street, Singapore.</p>
  <p>February 2014, Two Dots Arts Fest- Artistry, Singapore.</p>
  <p>February 2015, The Mill, Singapore.</p>
  <p>August 2015, Lindfield Public School, Syndey.</p>
  </ul>
  <div id="footer">
    Photos by <a id="m" href="${picasa.user}">${gallery.nickname}</a>. All rights reserved. <a href="?random${fn:replace(picasa.urlSuffix, '?', '&')}">Random photo</a>.
    <br>
  </div>
</div>
</body>
</html>
