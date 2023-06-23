function uname()
{
    x=document.getElementById("t1").value;
    y=x.length;
    if(y<3)
    {
      document.getElementById("s1").innerHTML="Min 3 latters";
      return false;
    }
    else
    {
      return true;
    }
}
function upass()
{
    x=document.getElementById("t2").value;;
    y=x.length;
    if(y<3)
    {
      document.getElementById("s2").innerHTML="invalid password";
      return false;
    }
    else
    {
      return true;
    }
}
function demo()
{
    document.getElementById("s1").innerHTML=" ";
    document.getElementById("s2").innerHTML=" ";
    
    if(uname() && upass())
    {
        form.submit();
    }
}