$(document).ready(function(){

    let datosmujeres = $('.mujer')
    //console.log(datosmujeres);
    //console.log(datosmujeres.children());
    $('.mujer').each(function (index, mujer ) { 
        //console.log(mujer);
       // console.log(mujer);
       
    });

    //for(var i in datosmujeres.children()){
      
      //  console.log(datosmujeres.children[i]);
    //}
    
});


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

    // Datos mujer


    $('.mujer').each(function (index, mujer ) { 
        //JSON.parse(JSON.stringify(mujer.value))

        //var variable = mujer.value; 
        //console.log("'"+mujer.value+"'");
        //var variable = "'"+mujer.value+"'";
        //console.log(variable);
        // la g indica de forma global
        index++;
        //$('.mujernombre[mujer_id="'+ index +'"]')
        //console.log( $('.mujernombre[mujer_id="'+ index +'"]')[0].value);
        let mujernombre = $('.mujernombre[mujer_id="'+ index +'"]')[0].value;
        var mujerlugarcoordx = $('.mujerlugarcoordx[mujer_id="'+ index +'"]')[0].value;
        var mujerlugarcoordy = $('.mujerlugarcoordy[mujer_id="'+ index +'"]')[0].value;
        let mujerlugardistrito = $('.mujerlugardistrito[mujer_id="'+ index +'"]')[0].value;
        let mujerlugardep = $('.mujerlugardep[mujer_id="'+ index +'"]')[0].value;
        let mujerID =$('.mujerID[mujer_id="'+ index +'"]')[0].value;
        var marker = L.marker([parseFloat(mujerlugarcoordx),parseFloat(mujerlugarcoordy)]).addTo(map);
        let mujerimagen = $('.mujerimagen[mujer_id="'+ index +'"]')[0].value;
        var popup = L.popup();

        //let mujerimagen = $('.mujerimagen').val();

        var photoImg = '<a href="galleries/'+ mujerID + '"><img src="static/' + mujerimagen + '" height="1200px" width="1200px" alt="imagen de "'+ mujernombre + '"/></a>';
    
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