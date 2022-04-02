
document.addEventListener('DOMContentLoaded', function() {
	var map = L.map('leafletMap').setView([-13.5363516,-72.526677,9], 8);

    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox/streets-v11',
        tileSize: 512,
        zoomOffset: -1,
        accessToken: 'pk.eyJ1IjoiZGllZ29zZW1pbmFyaW8iLCJhIjoiY2t5aGxvYzkyMjRpeDJ4bzgxd3RqemF0ZiJ9.HxjXDv1JRipE8aYwCQfKPA'
    }).addTo(map);

    var marker = L.marker([-13.5498695,-71.953328,12]).addTo(map);

    var marker2 = L.marker([-13.5252062,-71.9686264,17]).addTo(map);

    var popup = L.popup();

    var photoImg = '<a href=singleGallery.html?id=gal1><img src="images/Escritora_01.jpg" height="1200px" width="1200px"/></a>';

    function onMarkerMouseOver(e) {
        popup
            .setLatLng(e.latlng)
            .setContent("<center>Escritora </center>" + "</br>"+ photoImg + "</br>")
            .openOn(map);
    }

    function onMarkerMouseClick(e) {
        popup
            .setLatLng(e.latlng)
            .setContent("<center>Escritora </center>" + "</br>"+ photoImg + "</br>")
            .openOn(map);
    }

    function onMarkerMouseOut(e) {
        map.closePopup();
    }

    marker.on('click', onMarkerMouseClick);

    marker2.on('click', onMarkerMouseClick);

});