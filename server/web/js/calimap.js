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
            var img = response.cali[0].image;
                document.getElementById('outputDiv').innerHTML = "<img src=\"\">";
            for(var i=0; i<response.cali.length; i++){
                document.getElementById('outputDiv').innerHTML += "<img style=\"width:300px;height:300px\"src=\"http://calimap.party/" + response.cali[i].image + "\"/>";
            }
            
        }
    }).fail(function(){
        alert("올바른 입력을 해주세요");
    });
}