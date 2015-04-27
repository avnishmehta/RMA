$(document).ready(function (){

$("#usernamei,#passwordi").val("");

var objuname = $("#usernamei");

	function checkuname()
	{
		var pattern = /^([0-9a-z][0-9a-z_\.\-]+)@([0-9a-z][0-9a-z_\-]+)\.([a-z]{2,4})(\.[a-z]{2,4})?$/;
		var ans = pattern.test(objuname.val());
		if(ans == true)
		{
			return true;
		}
		else
		{
			$("#erruname").html("<font color='red'>Invalid Email</font>");
			$("#erruname").val("");
			return false;
		}

	}

var objpwd = $("#passwordi");

	function checkpwd()
	{
		var pattern = /^[a-zA-Z0-9\W]{6,}$/;
		var ans = pattern.test(objpwd.val());
		if(ans == true)
		{
			return true;
		}
		else
		{
			$("#errpwd").html("<font color='red'>Invalid Password</font>");
			$("#errpwd").val("");
			return false;
		}

	}

	$("#loginid").click(function (e){
		$(".error").html("");
		var a = checkuname();
		var b = checkpwd();
		if(a && b)
		{
			$("#wtlogini").submit();
		}

	});

});
