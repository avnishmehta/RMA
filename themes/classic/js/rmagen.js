$(document).ready(function() {

$("#nameid","#lnameid","#emid","#subid", "#txtarea").val("");

var objfname = $("#nameid");
function chfname()
{
    var pattern = /^([a-zA-z]{2,20})$/;
    var ans = pattern.test(objfname.val());
    if(ans==true){
		return true;
    }else{
		/*$("#errone").html("<font color='red'>Please enter your first name</font>");
		$("#nameid").val("");
		return false;*/
    }
}
var objlname = $("#lnameid");
function chlname()
{
    var pattern = /^([a-zA-z]{2,20})$/;
    var ans = pattern.test(objlname.val());
    if(ans==true){
		return true;
    }else{
		/*$("#errlname").html("<font color='red'>Please enter your last name</font>");
		$("#lnameid").val("");
		return false;*/
    }
}
var objemail=$("#emid");
function checkemail()
{
	var pattern = /^([0-9a-z][0-9a-z_\.\-]+)@([0-9a-z][0-9a-z_\-]+)\.([a-z]{2,4})(\.[a-z]{2,4})?$/;
	var ans = pattern.test(objemail.val());
	if(ans == true){
		return true;
	}else{
		/*$("#erremid").html("<font color:'red'>Please enter a valid email id</font>");
		$("#emid").val("");
		return false;*/
	}
}
var objsub=$("#subid");
function checkSub()
{
	var pattern = /^([0-9a-zA-Z \W]{5,50})$/;
	var ans = pattern.test(objsub.val());
	if(ans == true){
		return true;
	}else{
		/*$("#errsub").html("<font color='red'>Subject is Required !</font>");
		$("#subid").val("");
		return false;*/
	}
}
var objtxt=$("#txtarea");
function checkMessage()
{
    var pattern = /^([0-9a-zA-Z \W]{10,1000})$/;
    var ans = pattern.test(objtxt.val());
    if(ans == true){
		return true;
    }else{
		/*$("#errtxt").html("<font color='red'>Please specify your problem</font>");
		$("#txtarea").val("");
		return false;*/
    }
}
$("#subsub").click(function(e)
{
    $(".error").html("");

    var g = chfname();
    var f = chlname();
    var h = checkemail();
    var i = checkSub();
    var j = checkMessage();

	if(g == true){
		if(f == true){
			if(h == true){
				if(i == true){
					if(j == true){
						$('#submitrmai').submit();
					}else{
						alert("Message should have minimum 10 characters");
					}
				}else{
					alert("Subject should have minimum 5 characters");
				}
			}else{
				alert("Enter a valid email address");
			}
		}else{
			alert("Invalid Last Name");
		}
	}else{
		alert("Invalid First Name");
	}

});


});

