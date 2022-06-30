window.addEventListener('load', initMap);

var vmap;
var div_vmap;

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