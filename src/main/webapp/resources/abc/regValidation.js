$(document).ready(function() 
	{  
	$("#regForm").keyup(function()
	{
    
		var fname = $("#firstname").val();
		var lname = $("#lastname").val();
			if(fname != 0) 
			{
				if(isValidFirstLastName(fname))
				{
					$("#validFirstName").css({
					"background-image": "url('img/validYes1.png')"
					});
				} else 
				{
					$("#validFirstName").css({
					"background-image": "url('img/validNo1.png')"
					});
					
				}
			} else 
			{
				$("#validFirstName").css({
				"background-image": "none"
				}); 
			}
			if(lname != 0) 
			{
				if(isValidFirstLastName(lname))
				{
					$("#validLastName").css({
					"background-image": "url('img/validYes1.png')"
					});
				} else 
				{
					$("#validLastName").css({
					"background-image": "url('img/validNo1.png')"
					});
					
				}
			} else 
			{
				$("#validLastName").css({
				"background-image": "none"
				}); 
			}
			if(isValidFirstLastName(fname) && isValidFirstLastName(lname))
			{
				$("#but").css({
					"display": "block"
					});
			} else {
				$("#but").css({
					"display": "none"
					});
			}
	});
	
  
    });
  
    function isValidFirstLastName(firstLastName) {
    var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
    return pattern.test(firstLastName);
    }