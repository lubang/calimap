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
            document.getElementById('outputImg').innerHTML = "<img src=\"\">";
            document.getElementById('outputMap').innerHTML = "";
            map = new OpenLayers.Map("outputMap");
            map.addLayer(new OpenLayers.Layer.OSM());
            var fromProjection = new OpenLayers.Projection("EPSG:4326");
            var toProjection   = new OpenLayers.Projection("EPSG:900913");
            var zoom = 1;
            var positionList = [];
            var markerNameList = [];
            for (var i = 0; i < response.cali.length; i++) {
                document.getElementById('outputImg').innerHTML += "<img style=\"width:200px;height:200px\"src=\"http://calimap.party/" + response.cali[i].image + "\"/>";
                var geoInfo = response.cali[i].geo.geometry.coordinates;
                var lon = geoInfo[1];
                var lat = geoInfo[0];
                var position = new OpenLayers.LonLat(lon, lat).transform(fromProjection, toProjection);
                positionList.push(position);
                markerNameList.push(response.cali[i].geo.properties.name)
            }
            for(var i = 0; i < positionList.length; i++){
                var markers = new OpenLayers.Layer.Markers(markerNameList[i]);
                map.addLayer(markers);
                markers.addMarker(new OpenLayers.Marker(positionList[i]));
                map.setCenter(positionList[i], zoom);
            }
        }
    }).fail(function () {
        alert("올바른 입력을 해주세요");
    });
}