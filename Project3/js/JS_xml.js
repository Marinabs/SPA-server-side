function loadDoc1() {
 var xhttp = new XMLHttpRequest();
 xhttp.onreadystatechange = function() {
 if (this.readyState == 4 && this.status == 200) {
 document.getElementById("contenu").innerHTML = this.responseText;
 }
 };
 xhttp.open("GET", "load1.php", true);
 xhttp.send();
 }
 
function loadDoc2() {
 var xhttp = new XMLHttpRequest();
 xhttp.onreadystatechange = function() {
 if (this.readyState == 4 && this.status == 200) {
 document.getElementById("contenu").innerHTML = this.responseText;
 }
 };
 xhttp.open("GET", "load2.php", true);
 xhttp.send();
 }

 function loadJSON(url) {
 var xhttp = new XMLHttpRequest();
 xhttp.onreadystatechange = function() {
 if (this.readyState == 4 && this.status == 200) {
 afficheJSON(this.responseText);
 }
 };
 xhttp.open("GET", "meteo.php", true);
 xhttp.send();
 }

 function afficheJSON(txtJSON){
 var contenu ='';
 var d = new Date();
 var objJSON = JSON.parse(txtJSON);
 contenu += " " + objJSON.name + " ";
 contenu += "<i style='font-size:15px'> ( " + d.getFullYear() +"/"+ (d.getMonth()+1) +"/"+ d.getDate() + " ) </i>" + "<br/></br>";
 contenu += " " + objJSON.description + "</br></br>";
 contenu += " " + objJSON.temp + " &deg;C <br>";
 contenu += "<img src = 'http://openweathermap.org/img/w/"+ objJSON.icon + ".png'>" +"<br>";
 document.getElementById("contenue").innerHTML = contenu;
}
 