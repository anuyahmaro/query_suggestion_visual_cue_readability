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

    // $(function() {
    //     //load list with ajax.
    //     let headers = new Headers();
    //
    //     headers.append('Content-Type', 'application/json');
    //     headers.append('Accept', 'application/json');
    //     headers.append('Origin','http://localhost:8888');
    //
    //     var suggestions = [];
    //     $.ajax({
    //         url: 'http://0.0.0.0:4600/average_readability_api?queryterm=rates',
    //         type: 'GET',
    //         responseType:'application/json',
    //         dataType: 'json', // jsonp only beause it is a cross org. req.
    //         success: function(data) {
    //             console.log(data);
    //             return data;
    //
    //         }
    //     });
    //
    // });



    function getReadability(q){
        let headers = new Headers();
        var final_res = [];
        let myres = 0;
        var my_res;

        headers.append('Content-Type', 'application/json');
        headers.append('Accept', 'application/json');
        headers.append('Origin','http://localhost:8888');

        $.ajax({
            url: 'http://0.0.0.0:4600/average_readability_api?queryterm=' + q,
            type: 'GET',
            'async': false,
            responseType:'application/json',
            dataType: 'json',
            'global': false,
            success: function(data) {
                my_res = data;
                // console.log(data);
                // final_res.push(data);
                var list2 = [];
                list2.push(data);
                // console.log(list2);

                $.each(list2, function (i, val2) {
                    final_res.push(val2);
                });
                // console.log(final_res);
            }

        });
        // document.write(final_res[0]);

        return my_res;

    }


    getReadability('many');

  //   // function abc(q){
  //   //     $.ajax({
  //   //         url:'http://0.0.0.0:4600/average_readability_api?queryterm=' + q,
  //   //         type:'GET',
  //   //         success: function(data){ update(data, q); },
  //   //         error:function(error){
  //   //             console.log(error);
  //   //         }
  //   //     });
  //   // }
  //
  // // var xv =  abc('raining');
  // //   console.log(xv);
  //
  //   function myFunction(p1, p2) {
  //       return p1 * p2;   // The function returns the product of p1 and p2
  //   }


    let k = getReadability('many');
    let m = getReadability('many');

    console.log(k + m);

</script>
<!--</body>-->
<!--</html>-->