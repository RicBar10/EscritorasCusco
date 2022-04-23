$(document).ready(function(){
		mapboxgl.accessToken = 'pk.eyJ1Ijoic2FyYXN0ZWYiLCJhIjoiY2wyOWd4dnAyMGozazNudDNya2p3ZDdiayJ9.BOeRIJvtRAIHGx1h5HMG4w';
		var map = new mapboxgl.Map({
			container: 'map',
			style: 'mapbox://styles/sarastef/cl29kkk6g006q15jz43e0tzol/draft',
			center: [-77.04, 38.907],
			zoom: 11.15
			// center: [-13.5363516,-72.526677,9],
			// zoom: 8
		});
		var map = L.map('leafletMap').setView([-13.5363516,-72.526677,9], 8);
		var LeafIcon = L.Icon.extend({
		    options: {
		       iconSize:     [38, 55],
		       shadowSize:   [50, 64],
		       // iconAnchor:   [22, 94],
		       shadowAnchor: [4, 62],
		       // popupAnchor:  [-3, -76]
		    }
		});

		var greenIcon = new LeafIcon({
		    iconUrl: 'static/images/layout/pin-claro.png',
		    shadowUrl: 'static/images/layout/pin-sombra.png'
		})
    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox/streets-v11',
        tileSize: 512,
        zoomOffset: -1,
        accessToken: 'pk.eyJ1IjoiZGllZ29zZW1pbmFyaW8iLCJhIjoiY2t5aGxvYzkyMjRpeDJ4bzgxd3RqemF0ZiJ9.HxjXDv1JRipE8aYwCQfKPA',
    }).addTo(map);

    $('.mujer').each(function (index, mujer ) {
        index++;
        let mujernombre = $('.mujernombre[mujer_id="'+ index +'"]')[0].value;
				let mujercategoria = $('.mujercategoria[mujer_id="'+ index +'"]')[0].value;
        var mujerlugarcoordx = $('.mujerlugarcoordx[mujer_id="'+ index +'"]')[0].value;
        var mujerlugarcoordy = $('.mujerlugarcoordy[mujer_id="'+ index +'"]')[0].value;
        let mujerlugardistrito = $('.mujerlugardistrito[mujer_id="'+ index +'"]')[0].value;
        let mujerlugardep = $('.mujerlugardep[mujer_id="'+ index +'"]')[0].value;
        let mujerID =$('.mujerID[mujer_id="'+ index +'"]')[0].value;
				console.log(mujernombre,mujerlugarcoordx,mujerlugarcoordy);

        var marker = L.marker([parseFloat(mujerlugarcoordx),parseFloat(mujerlugarcoordy)],{icon: greenIcon}).addTo(map);

			  let mujerimagen = $('.mujerimagen[mujer_id="'+ index +'"]')[0].value;
        var popup = L.popup();

        var photoImg = '<a href="galleries/'+ mujerID + '"><img src="static/' + mujerimagen + '" height="10px" id="imgmapa" alt="imagen de "'+ mujernombre + '" class="img-fluid border-radius-md" /></a>';

		    function onMarkerMouseOver(e) {
		        popup
		            .setLatLng(e.latlng)
								.setContent("<div class='card-plain card-blog card-image text-center border-radius-lg'>"+
															"<div class='card-image border-radius-lg position-relative'>"+
																photoImg +
															"</div>"+
															"<div class='card-body px-0 pb-0'>"+
															" <h6 class='mb-0 d-md-block text-warning text-gradient'>"+mujernombre+"</h6>"+
																"<p class='mb-0 mt-0 text-xs font-weight-bolder text-uppercase'>"+
																	mujercategoria+'<br/>'+
																"</p>" +
																"<small>"+	mujerlugardistrito +"-"+ mujerlugardep +"</small>"+
																"</div>" +
														"</div>"
		        								)
								.openOn(map);
		    }

		    function onMarkerMouseClick(e) {
		        popup
		            .setLatLng(e.latlng)
		            .setContent("<center>Escritora </center>" +
														"<div class='card-body text-center bg-white shadow border-radius-lg p-3'>"+ photoImg +
															"<h5 class='mt-3 mb-1 d-md-block d-none'>"+ mujernombre + "</h5>"+
														"</div>"+
														"</br>"+
		            mujerlugardistrito + "</br>"+ "</br>"+ mujerlugardep + "</br>")
		            .openOn(map);
		    }

		    function onMarkerMouseOut(e) {
		        map.closePopup();
		    }
		    marker.on('mouseover', onMarkerMouseOver);
    		//Fin datos mujer
    });
});
