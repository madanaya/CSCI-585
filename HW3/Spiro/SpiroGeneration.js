var R=5, r=1, a=4;
var x0=R+r-a, y0=0;
var cos=Math.cos, sin=Math.sin, pi=Math.PI, nRev=10;

for(var t=0.0; t<(pi*nRev); t+=0.001)
{
    var x=(R+r)*cos((r/R)*t) - a*cos((1+r/R)*t);
    var y=(R+r)*sin((r/R)*t) - a*sin((1+r/R)*t);
    document.write(-118.2849096+0.0001*y);
    document.write(", ");
    document.write(34.0210039 + 0.0001*x);
    document.write("<br />");
}