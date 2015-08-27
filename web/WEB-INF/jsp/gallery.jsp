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
  <script type="text/javascript">
    $(initMap);
    $(initAlbumFilter);
  </script>
</head>

<body style="color: gray">

<div id="header" class="header">
  <%--<form id="search"><input type="text" placeholder="Filter or Search" title="Type to filter albums or press enter to search for individual photos"></form>--%>
  <ul id="nav">
    <li><a href="/">Gallery</a></li>
    <li><a href="/statement">Artist Statement</a></li>
    <li><a href="/about">About</a></li>
  </ul>
</div>

<div id="content">
  <div class="albums">
    <c:forEach var="album" items="${gallery.albumEntries}">
      <c:if test="${album.photosUsed > 1}">
        <a id="${album.gphotoId}" class="fade" href="gallery/${album.name}${picasa.urlSuffix}" <c:if test="${album.geoLocation != null}">data-coords="${album.geoLocation.latitude}:${album.geoLocation.longitude}"</c:if>>
          <img src="${album.mediaThumbnails[0].url}" alt="${album.title.plainText} photos, pictures">

          <div class="title">
            <span class="info">${album.photosUsed}</span>
            <span class="text">${album.title.plainText}</span>
            <span class="description hidden">${album.description.plainText}</span>
          </div>
        </a>
      </c:if>
    </c:forEach>
  </div>

  <div id="footer">
    Paintings by <a id="m" href="${picasa.user}">${gallery.nickname}</a>. All rights reserved. Please contact me at prahlad.oormila@gmail.com. <br/><br/><a href="?random${fn:replace(picasa.urlSuffix, '?', '&')}">Please click for a random painting from my portfolio</a>.
    <br>
  </div>
</div>

<h2 class="hidden">${gallery.nickname} <b>photos</b> and pictures</h2>
</body>
</html>
