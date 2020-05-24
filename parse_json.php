<!---->
<!---->
<!--<html>-->

<?php header('Access-Control-Allow-Origin: *'); ?>

<script src="assets/js/jquery-3.2.1.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script>
// var createList = function(list) {
//     var $body = $('body');
//     var $ul = $body.append('<ul/>');
//     $.each(list, function(index, value) {
//         $ul.append($('<li/>').text(index + " - " + value));
//     });
// };

$(function() {
    //load list with ajax.
    let headers = new Headers();

    headers.append('Content-Type', 'application/json');
    headers.append('Accept', 'application/json');
    headers.append('Origin','http://localhost:8888');

    var suggestions = [];
    $.ajax({
       // url: 'http://www.mocky.io/v2/54936e28827817b013aa9004', // json data
        url: 'http://0.0.0.0:4590/googlesearch_api?queryterm=monday',
        // method: 'GET',

        // crossDomain:true,
        type: 'GET',
        // contentType: 'application/json',
        // headers: {
        //
        //     'Access-Control-Allow-Origin': 'http://localhost:8888'
        // },
        responseType:'application/json',
        dataType: 'json', // jsonp only beause it is a cross org. req.
        success: function(data) {
            console.log(data);
            // createList(json.data);

            var list2 = [];

            $.each(data, function (i, val) {
                // var guid = generateUUID();
                list2.push(data[i]);
            });

            // data = data.slice(0,3);
            list2 = list2[0].slice(0,3);

            console.log(list2);
            //
            //
            //
            // $.each(list2, function (i, val) {
            //     // var guid = generateUUID();
            //     suggestions.push({suggestion: val, source: "requik", id:guid});
            // });

        }
    });

});
</script>
<!--</body>-->
<!--</html>-->