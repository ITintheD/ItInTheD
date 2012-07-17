
function initialize() {
	var myOptions = {
      center: new google.maps.LatLng(42.352931,-83.090286),
      zoom: 12,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
	  styles:[
	  {
	    featureType: "landscape",
	    elementType: "geometry.fill",
	    stylers: [
	      { visibility: "on" },
	      { weight: 3.6 },
	      { saturation: 100 },
	      { hue: "#0077ff" }
	    ]
	  },{
	    featureType: "water",
	    elementType: "geometry.fill",
	    stylers: [
	      { saturation: 86 },
	      { hue: "#00b2ff" }
	    ]
	  },{
	    featureType: "road",
	    elementType: "geometry.fill",
	    stylers: [
	      { hue: "#0077ff" }
	    ]
	  }	,{
		    featureType: "road",
		    elementType: "labels.text.stroke",
		    stylers: [
		      { hue: "#00f6ff" },
		      { saturation: 6 },
		      { lightness: 30 },
		      { gamma: 1.56 }
		    ]
		  }
	]
    };

    var map = new google.maps.Map(
		document.getElementById("map_canvas"), 
		myOptions
	);

	addCompanies(map);
}


function addCompanies(map) {
  var marker = new google.maps.Marker({
      position: new google.maps.LatLng(42.332566,-83.046856),
      map: map,
      title:"Compuware"
  });
}
