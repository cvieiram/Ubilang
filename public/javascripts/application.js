// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
	function showstuff(boxid){
	   document.getElementById(boxid).style.display="block";
	}

	function hidestuff(boxid){
	   document.getElementById(boxid).style.display="none";
	}
	function hide(name1,name2,name3,name4)
	{
		 hidestuff(name1);
		 hidestuff(name2);
		 hidestuff(name3);
		 showstuff(name4);
	}
  
	function getParameter( parameterName ) {
		var queryString = window.location.search.substring(1);
		var parameters = queryString.split('&');
		for(var i = 0; i < parameters.length; i++) {
			if (parameters[i].indexOf(parameterName.toLowerCase())>=0) {
				var parameterValue = parameters[i].split('=');
				return parameterValue[1];
			}
		}
		return '[not supplied]';
	}
	function prueba(variable)
  {
    alert(variable);
    var viframe = document.getElementById('aud').src=variable;
  }

	function cargarUbicacion()
  {
    if (navigator.geolocation) {  
				getLocation();
			} else {  
				alert("Sorry, your device or browser software does not appear to support geolocation services.");
			}  
	}


  function getLocation() {
				// Get location no more than 10 minutes old. 600000 ms = 10 minutes.
				navigator.geolocation.getCurrentPosition(showLocation, showError, {enableHighAccuracy:true,maximumAge:600000});
			}
 
			function showError(error) {
				alert(error.code + ' ' + error.message);
			}
 
      function showLocation(position) { 
				document.getElementById("geoinfo").innerHTML='<p>Latitude: ' + position.coords.latitude + '</p>' 
				+ '<p>Longitude: ' + position.coords.longitude + '</p>' 
				+ '<p>Accuracy: ' + position.coords.accuracy + '</p>';
        document.getElementById("map").src="http://maps.google.com/maps/api/staticmap?center="+position.coords.latitude+","+position.coords.longitude+"&zoom=14&size=300x200&maptype=roadmap&markers=color:green|label:G|"+position.coords.latitude+","+position.coords.longitude+"&sensor=true";

			}
      

	function cargar()
	{
		var param=getParameter('help');

		if(param=="o")
		{
			hide('foods','ettiquetes','translation', 'order')
		}else{
			if(param=="t")
			{
				hide('foods','ettiquetes','order', 'translation')
			}else{
				if(param=="f"){
					hide('translation','ettiquetes','order', 'foods')
				}else{
					hide('foods','translation','order', 'ettiquetes')
				}
			}
			
		}
	}
