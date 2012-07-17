
function initialize() {
	var myOptions = {
      center: new google.maps.LatLng(42.352931,-83.090286),
      zoom: 12,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

	addCompanies(map);
}


function addCompanies(map) {
  var marker = new google.maps.Marker({
      position: new google.maps.LatLng(42.332566,-83.046856),
      map: map,
      title:"Compuware"
  });
}
