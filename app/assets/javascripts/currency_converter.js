// NOTE: Sample code uses jQuery to handle jsonp
/*$.ajax({
    url: 'https://currency-api.appspot.com/api/EUR/NOK.jsonp',
    dataType: "jsonp",
    data: { amount: $('#input-eur').val()},
    success: function(response) {

        if (response.success) {
            var output = parseFloat(response.rate).toFixed(2);

            $('#output-nok').val(output);
            alert('hello')
        }
    }
});*/

/*$(document).ready(function(){
    $('#output-nok').load('https://www.google.com/finance/converter?a=1&from=EUR&to=NOK .bld');
  var amount = 2.00;
   // amount = parseFloat( $('#input-eur').val()).toFixed(2);
        $.ajax({
            url: 'https://www.google.com/finance/converter?a=1&from=EUR&to=NOK',
            dataType: "jsonp",
            data: { amount: 2.00'' },
            success: function(response) {

                if (response.success) {
                    var output = parseFloat(response.rate).toFixed(2);

                    $('#output-nok').val(output);
                    //alert( parseFloat( $('#input-eur').val()).toFixed(2) );
                }
            }
        });
});*/