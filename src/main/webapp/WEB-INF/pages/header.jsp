<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
</head>
<body>
<div class="headerMain">
  <div class="headerUpper">
      <div class="headerHome">
        <a href="/"></a>
      </div>
  </div>
  <div class="headerList">
    <table id="headerTable" border="0" style="font-family: Verdana;">
      <tr>
        <th class="headerLink" id="headerL"><a href="/about?name=Canis Major&object=constellations">Canis Major</a></th>
        <th class="headerLink"><a href="/about?name=Bootes&object=constellations">Boötes</a></th>
        <th class="headerLink"><a href="/about?name=Lyra&object=constellations">Lyra</a></th>
        <th class="headerLink"><a href="/about?name=Orion&object=constellations">Orion</a></th>
        <th class="headerLink"><a href="/about?name=Taurus&object=constellations">Taurus</a></th>
        <th class="headerLink"><a href="/about?name=Scorpius&object=constellations">Scorpius</a></th>
        <th class="headerLink"><a href="/about?name=Gemini&object=constellations">Gemini</a></th>
        <th class="headerLink"><a href="/about?name=Cygnus&object=constellations">Cygnus</a></th>
        <th class="headerLink"><a href="/about?name=Auriga&object=constellations">Auriga</a></th>
        <th class="headerLink">
            <select class="headerMore" size="1">
                <option onclick="location.href='/about?name=eridanus&object=constellations';">Eridanus</option>
                <option>Draco</option>
                <option>Dorado</option>
                <option>Aquarius</option>
                <option>Camelopardalis</option>
                <option>Hydra</option>
                <option>Cetus</option>
                <option>Centaurus</option>
                <option>Ophiuchus</option>
                <option>Leo</option>
                <option onclick="location.href='/about?name=eridanus&object=constellations';">Eridanus</option>
                <option>Draco</option>
                <option>Dorado</option>
                <option>Aquarius</option>
                <option>Camelopardalis</option>
                <option>Hydra</option>
                <option>Cetus</option>
                <option>Centaurus</option>
                <option>Ophiuchus</option>
                <option>Leo</option>
            </select>
        </th>
      </tr>
    </table>
  </div>
</div>

<div class="headerHide"></div>
</body>
</html>
