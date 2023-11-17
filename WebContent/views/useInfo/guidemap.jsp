<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../../mem_header.jsp"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../include/css/style.css">
    <title>라라랜드 위치안내</title>

<style>
#map { 
	width:100%;
	height:600px;
	display: flex;
    justify-content: center;
    align-items: center;
}
#v_disp {
	text-align: center;
}
.tit {
    font-size: 24.9px;
    color: black;
    font-weight: bold;
    margin-top: 50px;
}
</style>    
</head>
<body>

<p class="tit">가이드맵</p>
<div id="v_disp">라라랜드에 대해 궁금한 것이 있으신가요? 가이드맵을 통해 자세한 정보를 확인하세요!</div>
<br>
<div id="map"></div>
 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a531a8a51296fd7bef2c033b38834b36"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.293209, 127.202294), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: '라라랜드', 
        latlng: new kakao.maps.LatLng(37.293000, 127.202050)
    },
    {
        title: '유토피아 어드벤처', 
        latlng: new kakao.maps.LatLng(37.291311, 127.202050)
    },
    {
        title: '글로벌엔트리',
        latlng: new kakao.maps.LatLng(37.294450, 127.203521)
    },
    {
        title: '판타지드림 어드벤처', 
        latlng: new kakao.maps.LatLng(37.294485, 127.201018)
    },
    {
        title: '매직아일랜드',
        latlng: new kakao.maps.LatLng(37.293000, 127.200050)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}



</script>

<%@include file="../../footer.jsp" %>


</body>
</html>