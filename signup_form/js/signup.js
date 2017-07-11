function email_validate()
{
  email = document.getElementById("email").value;
  var regex= /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  if(!(regex.test(email)))
  {
    return false; 
  }
}

function chckpass()
{
  document.getElementById("spass").innerHTML="";
  document.getElementById("srpass").innerHTML="";
  pass=document.getElementById("pass").value;
  rpass=document.getElementById("rpass").value;
  if(pass!==rpass)
  {
    return false;
  }
}

function validate(){
  document.getElementById("semail").innerHTML="";
  document.getElementById("spass").innerHTML="";
  document.getElementById("srpass").innerHTML="";
  document.getElementById("sdob").innerHTML="";
  document.getElementById("scity").innerHTML="";
  document.getElementById("sdistrict").innerHTML="";
  document.getElementById("spincode").innerHTML="";
  document.getElementById("shouse").innerHTML="";
  email = document.getElementById("email").value;
  pass= document.getElementById("pass").value;
  rpass = document.getElementById("rpass").value;
  dob = document.getElementById("dob").value;
  city=document.getElementById("city").value;
  district=document.getElementById("district").value;
  pincode=document.getElementById("pincode").value;
  house_no=document.getElementById("house").value;
	var regex= /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  if(email.trim().length===0)
  {
    document.getElementById("semail").innerHTML="email can't be left blank";
    return false;
  }
  if(!(regex.test(email)))
  {
    document.getElementById("semail").innerHTML="enter a valid email id";
    return false;
  }
  if(dob.trim().length===0)
  {
    document.getElementById("sdob").innerHTML="date Of Birth can't be left blank";
    return false;
  }
  if(house_no.trim().length===0)
  {
    document.getElementById("shouse").innerHTML="can't be empty";
    return false;
  }
  if(city==="0")
  {
    document.getElementById("scity").innerHTML="select your city";
    return false;
  }
  if(district==="0")
  {
    document.getElementById("sdistrict").innerHTML="select your district";
    return false;
  }
  if(pincode.trim().length<6 || pincode.trim().length>6)
  {
    document.getElementById("spincode").innerHTML="must have 6 digits";
    return false;
  }
  if(!pincode.match(/^[0-9]{6}$/))
  {
    document.getElementById("spincode").innerHTML="only numeric value";
    return false;
  }
  if(pass.trim().length===0)
  {
    document.getElementById("spass").innerHTML="password can't be left blank";
    return false;
  }
  if(rpass.trim().length===0)
  {
    document.getElementById("srpass").innerHTML="repeated password can't be left blank";
    return false;
  }
  if(pass!==rpass)
  {
    document.getElementById("srpass").innerHTML="password not matched";
    return false;
  }
}
