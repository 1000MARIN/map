<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.14.1/css/ol.css" type="text/css">
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="http://map.vworld.kr/js/vworldMapInit.js.do?version=2.0&apiKey=C0AC97E9-FA3C-33E8-9166-C339D8C01DC5&domain=localhost:8080"></script>
    <script src="https://unpkg.com/shpjs@latest/dist/shp.js"></script>
    <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
    <title>배경지도</title>
</head>
<body>
<div class="vmap" id="v_map">

</div>
<script type="text/javascript">
    window.addEventListener('load', initMap);

    function initMap() {

        div_vmap = document.getElementById('v_map');

        vw.ol3.MapOptions = {

            basemapType: vw.ol3.BasemapType.GRAPHIC
            , controlDensity: vw.ol3.DensityType.EMPTY
            , interactionDensity: vw.ol3.DensityType.BASIC
            , controlsAutoArrange: true
            , homePosition: vw.ol3.CameraPosition
            , initPosition: vw.ol3.CameraPosition
        };
        vmap = new vw.ol3.Map(div_vmap,vw.ol3.MapOptions);
        vmap.getView().setCenter(ol.proj.transform([129.0667548, 35.1458086], "EPSG:4326", "EPSG:3857")); //지도가 html 문서에 초기화 되었을 때 사용자에게 보이는 중심점
        vmap.getView().setZoom(15);    //지도가 html 문서에 초기화 되었을 때 사용자에게 보이는 줌 레벨
    }
</script>
</body>
</html>
