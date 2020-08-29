// set up map with centering coordinates
var mymap = L.map('map').setView([29.0588, 76.0856], 9);

// list of foods truck vendors with latitude and longitude
var vendors = [
    {"id": "Talwar Hospital And Ivf Centre", "name":"Talwar Hospital And Ivf Centre", "lat": 29.534464, "lon":  75.041148},
    {"id": "Haryana Multispeciality Hospital", "name":"Haryana Multispeciality Hospital", "lat": 28.991383, "lon":  77.032680},
    {"id": "Mann MultiSpecialty Hospital", "name":"Mann MultiSpecialty Hospital", "lat": 28.898259, "lon":  76.589588},
    {"id": "R.J.S.memorial Multispeciality Hospital", "name":"R.J.S.memorial Multispeciality Hospital", "lat":28.251410, "lon":  76.136663},
    {"id": "Park Hospital", "name":"Park Hospital", "lat": 28.420032, "lon":  77.048143},
    {"id": "Artemis Hospital Gurgaon", "name":"Artemis Hospital Gurgaon", "lat": 28.431680, "lon":  77.072208},
    {"id": "District Civil Hospital", "name":"District Civil Hospital", "lat": 28.391216, "lon":  77.297940},
    {"id": "Sarvodaya Hospital and Research Centre", "name":"Sarvodaya Hospital and Research Centre", "lat": 28.367726, "lon":  77.336046},
    {"id": "Pawan Hospital", "name":"Pawan Hospital", "lat": 28.321978, "lon":  77.283521},
    {"id": "Loomba Hospital", "name":"Loomba Hospital", "lat": 30.378236, "lon": 76.776640},
    {"id": "Nagpal Hospital", "name":"Nagpal Hospital", "lat": 28.379342, "lon":   77.304434},
    {"id": "Sharma Hospital", "name":"Sharma Hospital", "lat": 28.461901, "lon":  77.027405},
    {"id": "Max Hospital, Gurugram", "name":"Max Hospital, Gurugram", "lat": 28.461296, "lon":  77.074636},
    {"id": "Civil Hospital", "name":"Civil Hospital", "lat": 28.461226, "lon":  77.033400},
];

// build Leaflet map using example from http://leafletjs.com/
L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
            '<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
            'Imagery © <a href="http://mapbox.com">Mapbox</a>',
    id: 'mapbox.streets'
}).addTo(mymap);

var myIcon = L.icon({
       iconUrl: 'assets/images/hospital-2.png', // pull out values as desired from the feature feature.properties.style.externalGraphic.
       iconSize: [38, 60],
       iconAnchor: [22, 50],
       popupAnchor: [-3, -76],

   });
// add markers at locations specified in vendors array
var marker = (function() {
    for (let index = 0; index < vendors.length; index++) {
        L.marker([vendors[index].lat, vendors[index].lon], {icon: myIcon})
        .bindPopup(vendors[index].name)
        .addTo(mymap);
    }
})();
