function getAlphabet() {
    var input = document.getElementById('inputAlphabet').value;
    var request = $.ajax({
        url: 'http://calimap.party/api/v1/alphabet/text=' + input
        , method: 'GET'
        , headers: {
            'Access-Control-Allow-Origin': '*'
        }
        , dataType: 'JSON'
        , success: function (response) {
            console.log(response);
            document.getElementById('outputImg').innerHTML = "<img src=\"\">";
            document.getElementById('outputMap').innerHTML = "";
            map = new OpenLayers.Map("outputMap");
            map.addLayer(new OpenLayers.Layer.OSM());
            for (var i = 0; i < response.cali.length; i++) {
                document.getElementById('outputImg').innerHTML += "<img style=\"width:200px;height:200px\"src=\"http://calimap.party/" + response.cali[i].image + "\"/>";
                var getInfo = response.cali[i].geo.geometry.coordinates;
                var lonLat = new OpenLayers.LonLat(getInfo[0], getInfo[1]).transform(new OpenLayers.Projection("EPSG:4326"), new OpenLayers.Projection("EPSG:900913"));
                var markers = new OpenLayers.Layer.Markers("Markers");
                map.addLayer(markers);
                markers.addMarker(new OpenLayers.Marker(lonLat));
                map.setCenter(lonLat, 5);
            }
        }
    }).fail(function () {
        alert("올바른 입력을 해주세요");
    });
}