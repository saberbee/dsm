function validate_em(eml,spid)
{
    var re = /([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9\-]))+\.([a-zA-Z0-9]{2,4})$/; 
    var str = eml;
    var m;
    if ((m = re.exec(str)) !== null) {
        console.log('m:'+m);
        if (m.index === re.lastIndex) {
            re.lastIndex++;
        }
        // View your result using the m-variable.
        // eg m[0] etc.
    //     console.log('true');
         document.getElementById(spid).style.display='none';
         return true;
    }
    else
    {
    //    console.log('false');
        document.getElementById(spid).style.display='block';
        return false;
    }

}
function submitForm()
{
    return (validate_em(document.getElementById("validateEmail").value)&&validate_lnk(document.getElementById("validFB").value));
}
function validate_empty(field,spid)
{
	if(field=='')
    {
        document.getElementById(spid).style.display='block';
        return false;
    }
    else
    {
 		document.getElementById(spid).style.display='none';
        return true;   	
    }
}
function validate_password(password,username)
{
      if(password.length < 9) {
        document.getElementById("passwordSpan").style.display='block';
        return false;
      }
      if(password == username) {
       document.getElementById("passwordSpan").textContent = "Password must be different from Username";
       document.getElementById("passwordSpan").style.display='block'; 
        return false;
      }
      re = /[0-9]/;
      if(!re.test(password)) {
       document.getElementById("passwordSpan").textContent = "password must contain at least one number (0-9)";
       document.getElementById("passwordSpan").style.display= 'block'; 
        return false;
      }
      re = /[a-z]/;
      if(!re.test(password)) {
        document.getElementById("passwordSpan").textContent = "password must contain at least one lowercase letter (a-z)";
        document.getElementById("passwordSpan").style.display='block';
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(password)) {
        document.getElementById("passwordSpan").textContent = "password must contain at least one uppercase letter (A-Z)";
        document.getElementById("passwordSpan").style.display='block';
        return false;
      }
             document.getElementById("passwordSpan").style.display= 'none'; 
   return true;
}
function validate_password_check(password , check)
{
    if(password != "" && password == check){
        document.getElementById("passwordSpan").style.display= 'none'; 
        document.getElementById("passwordcheckspan").style.display= 'none'; 
        return true;
    }
    else{
        document.getElementById("passwordcheckspan").style.display= 'block'; 
    }
}

function validate_arabic(val,spid)
{
        if(val=='')
        {document.getElementById(spid).style.display='block';
        return false;}
        var arabic = /^[\u0600-\u06FF ]*$/;
        if(!arabic.test(val)){document.getElementById(spid).style.display='block';
        return false;}

        document.getElementById(spid).style.display='none';
        return true;
}
function validate_NationalID(val,spid)
{
    if(val=='')
        {document.getElementById(spid).style.display='block';
        return false;}
        var national = /^(\d{14})$/;
        if(!national.test(val)){document.getElementById(spid).style.display='block';
        return false;}

        document.getElementById(spid).style.display='none';
        return true;
}
function validate_number(val,spid)
{
    if(val=='')
        {document.getElementById(spid).style.display='block';
        return false;}
        var national = /^-?\d+\.?\d*$/;
        if(!national.test(val)){document.getElementById(spid).style.display='block';
        return false;}

        document.getElementById(spid).style.display='none';
        return true;
}
function validate_Fblink(lnk,spid){
    var re = /^www.facebook.com\/([a-zA-Z0-9_.+-]+)$/; 
    var str = lnk;
    var m;
     
    if ((m = re.exec(str)) !== null) {
        if (m.index === re.lastIndex) {
            re.lastIndex++;
        }
         document.getElementById(spid).style.display='none';
         return true;
    }
 else
    {
        document.getElementById(spid).style.display='block';
        return false;
    }
}
function validate_mobile(country,mob,spid)
{
    var re='';
    switch(country)
    {
      case "uae":
            re = /^971[0-9]{9}$/;
            break;

      case "eg":
            re = /^01[0-9]{9}$/;
            break;
    } 
    console.log(re);
    var str = mob;
    var m;
     
    if ((m = re.exec(str)) !== null) {
        if (m.index === re.lastIndex) {
            re.lastIndex++;
        }
        document.getElementById(spid).style.display='none';
         return true;
    }
    else
    {
         document.getElementById(spid).style.display='block';
        return false;
    }
}
function validate_name(name,spid)
{
    if (isEmpty(name)||name.match(/^\s*$/)){
         document.getElementById(spid).style.display='block';
         return false;
    }
    else
    {
         document.getElementById(spid).style.display='none';
         return true;
    }
}
function isEmpty(val){
    return (val === undefined || val == null || val.length <= 0) ? true : false;
}

function validate_lndLine(lndline,spid)
{
    var re = /^0\d{8,11}$/;
    var str = lndline;
    var m;
     
    if ((m = re.exec(str)) !== null) {
        if (m.index === re.lastIndex) {
            re.lastIndex++;
        }
        document.getElementById(spid).style.display='none';
         return true;
    }
    else
    {
         document.getElementById(spid).style.display='block';
        return false;
    }
}