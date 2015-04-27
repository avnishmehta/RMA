$(document).ready(function(){

$("#cnid,#fnid,#lnid,#mid,#addid,#pzcid,#etb,#ptb,#cptb").val("");

var objcname = $("#cnid");

function checkcname()
{
        var pattern = /^([a-zA-Z0-9 .]{2,})$/;
        var ans = pattern.test(objcname.val());

        if(ans==true)
        {
                return true;
        }
        else
        {
                /*$(".error").html("<font color='red'>Invalid Company Name</font>");
                $("#cnid").val("");*/
                return false;
        }
}

var objfname = $("#fnid");

function checkfname()
{
        var pattern = /^([a-zA-Z]{2,})$/;
        var ans = pattern.test(objfname.val());

        if(ans==true)
        {
                return true;
        }
        else
        {
                /*$("#errfname").html("<font color='red'>Invalid First Name</font>");
                $("#fnid").val("");*/
                return false;
        }
}



var objlname = $("#lnid");

function checklname()
{
        var pattern = /^([a-zA-Z]{2,})$/;
        var ans = pattern.test(objlname.val());

        if(ans==true)
        {
                return true;
        }
        else
        {
                /*$("#errlname").html("<font color='red'>Invalid Last Name</font>");
                $("#lnid").val("");*/
                return false;
        }
}

var objph = $("#mid");

function checkph()
{
        var pattern = /^([0-9]{10})$/;
        var ans = pattern.test(objph.val());

        if(ans==true)
        {
                return true;
        }
        else
        {
                /*$("#errphone").html("<font color='red'>Invalid Number</font>");
                $("#mid").val("");*/
        }
}

var objadd = $("#addid");

function checkadd()
{
        var pattern = /^([0-9a-zA-Z \W]{15,})$/;
        var ans = pattern.test(objadd.val());

        if(ans==true)
        {
                return true;
        }
        else
        {
                /*$("#erradd").html("<font color='red'>Invalid Address</font>");
                $("#addid").val("");*/
                return false;
        }
}


var objpzcname = $("#pzcid");

function checkpzcname()
{
        var pattern = /^([0-9]{5,})$/;
        var ans = pattern.test(objpzcname.val());

        if(ans==true)
        {
                return true;
        }
        else
        {
                /*$("#errpzcidname").html("<font color='red'>Invalid Postal/Zip Code</font>");
                $("#pzcid").val("");*/
        }
}


var objemail=$("#etb");

function checkemail()
{
	var pattern = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        /*var pattern = /^([0-9a-z][0-9a-z_\.\-]+)@([0-9a-z][0-9a-z_\-]{2,}+)\.([a-z]{2,4})(\.[a-z]{2,4})?$/;*/
        var ans = pattern.test(objemail.val());
        if(ans == true)
        {
                return true;
        }
        else
        {
                /*$("#erremail").html("<font color='red'>Please enter a valid email id : for eg. : john@yahoo.com</font>");
                $("#etb").val("");*/
                return false;
        }
}

var objpass = $("#ptb");

function checkpass()
{
	var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}$/;
        /*var pass = /^([0-9a-zA-Z\W]{6,})$/;*/
        var ans = pass.test(objpass.val());
        if(ans == true)
        {
                return true;
        }
        else
        {
                /*$("#errpass").html("<font color='red'>Password Incorrect : only numbers and alphabets allowed</font> ");
                $("#ptb").val("");*/
        }
}

var objpass = $("#cptb");

function checkcpass()
{
	var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}$/;
        /*var pass = /^([0-9a-zA-Z\W]{6,})$/;*/
        var ans = pass.test(objpass.val());
        if(ans == true)
        {
                return true;
        }
        else
        {
                /*$("#errcpass").html("<font color='red'>Password Incorrect</font> ");
                $("#cptb").val("");*/
        }
}

function checkppwd() {

var pass1 = $("#ptb");
var pass2 = $("#cptb");
if(pass1.val() == pass2.val())
{
	return true;
}
else
{
	alert("Passwords do not match!");
	return false;
}

}

$("#nexbox").click(function(e)
{
        var a = checkcname();
        var b = checkfname();
        var c = checklname();
        var d = checkph();
        var e = checkadd();
        var f = checkpzcname();
        var g = checkemail();
        var h = checkpass();
        var i = checkcpass();
        var j = checkppwd();

		if(a == true)
		{
			if(b == true)
			{
				if(c == true)
				{
					if(d == true)
					{
						if(e == true)
						{
							if(f == true)
							{
								if(g == true)
								{
									if(h == true)
									{
										if(i == true)
										{
											if(j == true)
											{
								                $('#user_signup_i').submit();
											}
											else
											{
												alert("Passwords do not match!");
											}
										}
										else
										{
											alert("Invalid Password. Atleast one number, one lower-case, one-uppercase and minimum of 6 characters that are letters, numbers or underscore");
										}
									}
									else
									{
										alert("Invalid Password. Atleast one number, one lower-case, one-uppercase and minimum of 6 characters that are letters, numbers or underscore");
									}
								}
								else
								{
									alert("Invalid Email");
								}
							}
							else
							{
								alert("Invalid Postal Code");
							}
						}
						else
		    			{
		    				alert("Invalid Address");
		    			}
					}
					else
        			{
        				alert("Invalid Phone Number");
        			}
				}
				else
       			{
       				alert("Invalid Last Name");
       			}
			}
			else
			{
				alert("Invalid First Name");
			}
		}
		else
		{
			alert("Invalid Email");
		}

/*        if(a && b && c && d && e && f && g && h && i)
        {
                $('#user_signup_i').submit();
        }
        else
        {
                e.preventDefault();
        }*/

});

});

