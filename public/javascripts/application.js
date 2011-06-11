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
    var viframe = document.getElementById('aud').src=variable;
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
