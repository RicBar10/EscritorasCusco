$(document).ready(function(){
	var map = L.map('leafletMap').setView([-13.5363516,-72.526677,9], 8);

    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox/streets-v11',
        tileSize: 512,
        zoomOffset: -1,
        accessToken: 'pk.eyJ1IjoiZGllZ29zZW1pbmFyaW8iLCJhIjoiY2t5aGxvYzkyMjRpeDJ4bzgxd3RqemF0ZiJ9.HxjXDv1JRipE8aYwCQfKPA'
    }).addTo(map);

    $('.mujer').each(function (index, mujer ) {
        index++;
        let mujernombre = $('.mujernombre[mujer_id="'+ index +'"]')[0].value;
        var mujerlugarcoordx = $('.mujerlugarcoordx[mujer_id="'+ index +'"]')[0].value;
        var mujerlugarcoordy = $('.mujerlugarcoordy[mujer_id="'+ index +'"]')[0].value;
        let mujerlugardistrito = $('.mujerlugardistrito[mujer_id="'+ index +'"]')[0].value;
        let mujerlugardep = $('.mujerlugardep[mujer_id="'+ index +'"]')[0].value;
        let mujerID =$('.mujerID[mujer_id="'+ index +'"]')[0].value;
        var marker = L.marker([parseFloat(mujerlugarcoordx),parseFloat(mujerlugarcoordy)]).addTo(map);
        let mujerimagen = $('.mujerimagen[mujer_id="'+ index +'"]')[0].value;
        var popup = L.popup();

        var photoImg = '<a href="galleries/'+ mujerID + '"><img src="static/' + mujerimagen + '" height="10px" id="imgmapa" alt="imagen de "'+ mujernombre + '" class="img-fluid" /></a>';

    function onMarkerMouseOver(e) {
        popup
            .setLatLng(e.latlng)
            .setContent("<center>Escritora </center>" + "</br>"+ photoImg + "</br>" + "</br>"+ mujernombre + "</br>"+ "</br>"+
                            mujerlugardistrito + "</br>"+ "</br>"+ mujerlugardep + "</br>")
            .openOn(map);
    }

    function onMarkerMouseClick(e) {
        popup
            .setLatLng(e.latlng)
            .setContent("<center>Escritora </center>" + "</br>"+ photoImg + "</br>" + "</br>"+ mujernombre + "</br>"+ "</br>"+
            mujerlugardistrito + "</br>"+ "</br>"+ mujerlugardep + "</br>")
            .openOn(map);
    }

    function onMarkerMouseOut(e) {
        map.closePopup();
    }

    marker.on('mouseover', onMarkerMouseOver);
    //Fin datos mujer
    });
    //marker2.on('mouseover', onMarkerMouseOver);

});
