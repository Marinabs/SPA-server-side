 <?php
$api_key = '763dcd256b6048306e515d67a5042331';
$url = "http://api.openweathermap.org/data/2.5/weather?q=Montreal,ca&lang=fr&units=metric&appid={$api_key}";
$contents = file_get_contents($url);
$clima=json_decode($contents);
$meteo = array(); 
$meteo['name']=$clima->name;
$meteo['temp']=$clima->main->temp;
$meteo['icon']=$clima->weather[0]->icon;
$meteo['description']=$clima->weather[0]->description;
echo json_encode($meteo);
?>