
function initialize() {
	var myOptions = {
      center: new google.maps.LatLng(42.352931,-83.090286),
      zoom: 11,
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
	addEvents(map);
	addUniversities(map);
}


function addCompanies(map) {
	
  var marker = new google.maps.Marker({
      position: new google.maps.LatLng(42.332566,-83.046856),
      map: map,
      title: "Compuware"
  });
  var marker = new google.maps.Marker({
  	position: new google.maps.LatLng(42.338753, -83.048115),
  	map: map,
  	title: "Quicken Loans"
  });
}

function addEvents(map) {
	var event ="Mobile Monday Detroit";
	var infowindow = new google.maps.InfoWindow({
		content: event,
		size: new google.maps.Size(50,50)
	});
	var image = '/assets/purple-dot.png';
	var marker = new google.maps.Marker({
      position: new google.maps.LatLng(42.332566,-83.046856),
      map: map,
      icon: image,
      title:"Compuware"
        });
	marker.setAnimation(google.maps.Animation.BOUNCE);
	google.maps.event.addListener(marker,'click',function(){
		infowindow.open(map,marker);
	})
  
	
}
function addUniversities(map){
	var image = '/assets/yellow-dot.png';
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(42.297373, -83.109884),
		map: map,
		icon: image,
		title: "Wayne State University"
});
		
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(42.3352, -83.053265),
		map: map,
		icon: image,
		title: "Wayne County Community College"
	});
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(42.318987, -83.234576),
		map: map,
		icon: image,
		title: "University of Detroit Mercy"
	});
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(42.34332, -83.088627),
		map: map,
		icon: image,
		title: "University of Detroit Mercy"
	});
	
}