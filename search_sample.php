
<link rel="stylesheet" href="jquery-ui/themes/base/jquery.ui.all.css">
<?php
include ('dbadapter.php');
session_start();

$adapter = new dbadapter();
$sessionid=0;
if (isset ($_COOKIE["id"]))
{
    $sessionid = $_COOKIE["id"];
}else
{
    $gradeid = $_GET["grades"];
    $sessionid =$adapter->createsession ($gradeid);

    $_COOKIE["id"] = $sessionid;
}


if ($_GET) {
    $gradeid =  $_GET["grades"];
    if (isset($_GET["GO"]))
    {
        $GO = urlencode($_GET["GO"]);

        $searchquery = $_GET["GO"];
        $issuggestion = $_GET["suggestion"];
        $trigger=$_GET["trigger"];

        $URL = 'https://api.cognitive.microsoft.com/bing/v7.0/search?q='. //'https://api.cognitive.microsoft.com/bing/v7.0/news/search?q=' .
            $GO .
            '&count=10&offset=0&mkt=en-us&safeSearch=Strict';

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $URL);
        curl_setopt($ch, CURLOPT_HTTPGET, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER,
            array("Ocp-Apim-Subscription-Key: 6ff4c85ad15e4844b71071ab7ac8101c", "Content-Type: application/json"));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($ch, CURLOPT_TIMEOUT, 10);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE); // this results 0 every time
        $response = curl_exec($ch);
        if ($response === false) $response = curl_error($ch);
        curl_close($ch);

        $response = json_decode($response);


        $searchid  = isset ($_GET["sid"])?$_GET["sid"]:"";
    }

}


?>



<html>
<head>
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <style type="text/css">
        body

        {

        //background: #F2F2F2;

        //background-image: url("img4.jpg");

            font-size : 15px;

            font-family: arial,sans-serif;



        }

        .btn.btn-radio { background-color:#FFF;border-color:#CCC;color:#333; }
        .btn.btn-radio:hover { background-color:#EBEBEB;border-color:#ADADAD;color:#333; }
        .btn.btn-radio.active { background-color:#9BB4C9;border-color:#285E8E;color:#000; }

        .title

        {

            text-transform: capitalize;

            font-size : 18px;

            font-weight: bold;

            color: #b3b3ff;

            width:auto;



            overflow:hidden;

            text-overflow:ellipsis;

            white-space: nowrap;



            position: relative



        }

        div.relative {

            position: relative;



            margin:auto;

            float:left;



        }

        link {

            display: inline-block;

            text-decoration:none

        }

        a:after {

            content: "";

            display: block;

            width: 0;

            border-bottom: 1px solid;

            margin: 0 auto;

            transition:all 0s linear 0s;

        }






        .news

        {



            margin-left : 10px;

            float:left;

            text-transform: lowercase;



            text-align: justify;

            text-justify: inter-word;

            position: relative;

        }

        .popover{
            max-width:600px;
        }



        div.relative:first-letter {

            text-transform: uppercase;

        }

        td {border: 1px #DDD solid; padding: 5px; cursor: pointer;}

        .selected {
            background-color: steelblue;
            color: #FFF;
        }
    </style>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <a href="index.php" style="text-decoration: none"><button>Home Page</button></a>
            <form id="search-form" action="" method="GET">
                <center>
                    <a href = "http://irlab.boisestate.edu/searchengine4/search.php?"><img src="search.jpg" alt="image" class="img img-responsive"  height="200"></a>
                    <br>

                    <input id="searchinput" autocomplete="off" data-toggle="popover" data-container="body" data-placement="bottom" data-html="true" type="text" placeholder="Enter Search or Type URL..." style="font-size:20px;font-family: arial,sans-serif;height:30px;width:750px;" value ='<?php echo (isset($searchquery)?$searchquery:"")?>'  name="GO">


                    <input hidden="hidden" type="text" value="false" name="suggestion" id="suggestion" />
                    <input hidden="hidden" type="text" value="none" name="trigger" id="trigger"/>
                    <input hidden="hidden" type="text" value='<?php if(isset($searchid))echo $searchid?>' name="sid" id="searchid"/>
                    <input hidden="hidden" type="text" value ='<?php if(isset($gradeid))echo $gradeid?>'  name="grades">

                    <input type="submit" style="height:30px;width:40px; " id="go" value="GO">
                </center>





            </form>
        </div>
    </div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            <?PHP
            if (isset($_GET["GO"])){

                echo "<div class='news'>";

                foreach ($response->webPages->value as $result) {
                    echo "<div class='row'>";
                    echo "<div class='col-md-12'>";
                    $title = $result->name;
                    $url = $result->url;
                    $desc = $result->snippet;

                    echo "<div class='title'><a class='link a'   STYLE=\"text-decoration: none; color:#6666ff;\" target= '_blank' href='$url'>$title</a></div>";
                    echo "<div class='relative'><p>$desc</p>" . "<br><br>". "</div>";

                    echo "</div>";
                    echo "</div>";
                    echo "<br>";
                    echo "<br>";

                }
                echo "</div>";
            }
            ?>
        </div>
    </div>
</div>



<script src="assets/js/jquery-3.2.1.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script>


    $(function (){

        var suggestiontable = $('#tb_suggestions');
        var suggestiontablebody = $('#tb_suggestions_body');
        var suggestions = [];var searchquery;var timer = null;
        var timeout = 1000;
        var controlsinit = false;
        var p_msg = $('p_msg');
        console.log("function called");


        (function($){
            //Shuffle all rows, while keeping the first column
            //Requires: Shuffle
            $.fn.shuffleRows = function(){
                return this.each(function(){
                    var main = $(/table/i.test(this.tagName) ? this.tBodies[0] : this);
                    var firstElem = [], counter=0;
                    main.children().each(function(){
                        firstElem.push(this.firstChild);
                    });
                    main.shuffle();
                    main.children().each(function(){
                        this.insertBefore(firstElem[counter++], this.firstChild);
                    });
                });
            }
            /* Shuffle is required */
            $.fn.shuffle = function() {
                return this.each(function(){
                    var items = $(this).children();
                    return (items.length)
                        ? $(this).html($.shuffle(items))
                        : this;
                });
            }

            $.shuffle = function(arr) {
                for(
                    var j, x, i = arr.length; i;
                    j = parseInt(Math.random() * i),
                        x = arr[--i], arr[i] = arr[j], arr[j] = x
                );
                return arr;
            }
        })(jQuery)


        function generateUUID() {

            var d = new Date().getTime();

            if (window.performance && typeof window.performance.now === "function") {

                d += performance.now(); //use high-precision timer if available

            }

            var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {

                var r = (d + Math.random() * 16) % 16 | 0;

                d = Math.floor(d / 16);

                return (c == 'x' ? r : (r & 0x3 | 0x8)).toString(16);

            });

            return uuid;

        }


        // var getReadability = function (q){
        //     let headers = new Headers();
        //     var res = [];
        //     let total = 0;
        //
        //
        //     headers.append('Content-Type', 'application/json');
        //     headers.append('Accept', 'application/json');
        //     headers.append('Origin','http://localhost:8888');
        //
        //     $.ajax({
        //         url: 'http://0.0.0.0:4600/average_readability_api?queryterm='+q,
        //         type: 'GET',
        //         responseType:'application/json',
        //         dataType: 'json', // jsonp only beause it is a cross org. req.
        //         success: function(data) {
        //
        //             console.log(q);
        //             res.push(data);
        //             res.forEach(d => {
        //                 total += d;
        //                 console.log(total);
        //             });
        //
        //         }
        //     });
        //
        //     console.log(total);
        //     return total;
        // };

        function getReadability(q){
            let headers = new Headers();
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

                }
            });
            return my_res;

        }




        function loadpopover(){

            suggestiontablebody.html('');

            suggestions = [];



            searchquery =$('#searchinput').val();

            searchquery = searchquery.replace(/[^\w\s!?]!/g,'');

            // First is for Bing
            $.ajax({
                // url: "http://irlab.boisestate.edu/requik/suggest/"+searchquery,
                url:  "http://api.bing.com/osjson.aspx?Query=" + encodeURIComponent(searchquery) + "&JsonType=callback&JsonCallback=?",
                //  url: "http://suggestqueries.google.com/complete/search?output=toolbar&hl=en&q=" + encodeURIComponent(searchquery) + "&JsonType=callback&JsonCallback=?",
                // url: "https://www.kidzsearch.com/searchac.php?term=" + encodeURIComponent(searchquery) + "&JsonType=callback&JsonCallback=?",
                dataType: "jsonp",

                //  data:
                // {
                //     term: searchquery,
                // },

                success: function (data) {
                    console.log(data);
                    var list2 = data[1];

                    // data = data.slice(0,3);
                    list2 = list2.slice(0,2);


                    // $.each(data, function (i, val) {
                    //
                    // 	var guid = generateUUID();
                    //     suggestions.push({ suggestion: val, source : "requik",id:guid});
                    //
                    // 	});
                    $.each(list2, function (i, val2) {
                        var guid = generateUUID();
                        let result_b = getReadability(val2);
                        suggestions.push({suggestion: val2, source: "bing", id:guid, complexity: result_b});
                    });



                    // For kIDZSEARCH
                    let headers = new Headers();

                    headers.append('Content-Type', 'application/json');
                    headers.append('Accept', 'application/json');
                    headers.append('Origin','http://localhost:8888');
                    $.ajax({

                        url:  "http://0.0.0.0:4571/kidzsearch_api?queryterm=" + encodeURIComponent(searchquery),
                        type: 'GET',
                        responseType:'application/json',
                        dataType: 'json',


                        success: function (data) {

                            var list_kidz = [];

                            $.each(data, function (i, val) {
                                list_kidz.push(data[i]);
                            });

                            list_kidz = list_kidz[0].slice(0,2);


                            $.each(list_kidz, function (i, val) {
                                let result_k = getReadability(val);

                                var guid = generateUUID();
                                suggestions.push({ suggestion: val, source : "kidzsearch", id:guid, complexity: result_k});



                            });

                            // For Google
                            $.ajax({

                                url:  "http://0.0.0.0:4590/googlesearch_api?queryterm=" + encodeURIComponent(searchquery),
                                type: 'GET',
                                responseType:'application/json',
                                dataType: 'json',


                                success: function (data) {
                                    var list_google = [];

                                    $.each(data, function (i, val) {
                                        list_google.push(data[i]);
                                    });

                                    list_google= list_google[0].slice(0,2);


                                    $.each(list_google, function (i, val3) {


                                        var guid3 = generateUUID();
                                        let result_g = getReadability(val3);
                                        // document.write(mula);
                                        suggestions.push({ suggestion: val3, source : "google", id: guid3, complexity: result_g});

                                        console.log(suggestions);

                                    });
                                    $("#tb_suggestions").shuffleRows();
                                    showui(suggestions);

                                }
                            });



                        }
                    });

                }




            });
        }

        function showui (suggestions){




            suggestiontablebody = $('#tb_suggestions_body');
            var tablebody = "";


            $.each(suggestions, function (i, val) {

                // console.log(val);

                tablebody +='<tr> <td>'+val.suggestion+'</td> <td align="center" >' +val.complexity+ '</div></td></tr>';
                //
                // ' <label class="btn btn-xs btn-white btn-radio">'+
                //   ' <input id="like_'+val.id+'" type="radio" autocomplete="off"> <img src="img/happyface.png" class="img img-responsive" alt="Mountain View" width="30" height="30">'+
                //  '</label>'+
                // ' <label class="btn btn-xs btn-white btn-radio">'+
                //  '  <input type="radio" autocomplete="off"> <img src="img/sadface.png" alt="Mountain View" class="img img-responsive" width="30" height="30">'+
                //  '</label>'+

                // ' <label class="">'+
                // ' <input id="like_'+val.complexity+'" type="t" autocomplete="off">'+
                // '</label>'+


                // '<tr> <td>'+val.complexity+'</td> <td ><div class="btn-group" data-toggle="buttons">'
                // ' <label class="btn btn-xs btn-white btn-radio">'+
                // '  <input type="radio" autocomplete="off"> <img src="img/sadface.png" alt="Mountain View" class="img img-responsive" width="30" height="30">'+
                // '</label>'+





            });

            $('#searchinput').popover('destroy');

            $('#searchinput').popover({

                html: true,

                content: function() {



                    return '<div  id="popover-suggestions" >'+
                        '<form>'+
                        '<div class="form-group">'+

                        '<div class="modal-header">'+

                        '<h4 class="modal-title" id="defaultModalLabel">Suggestions for: <b>' + searchquery +'</b> </h4>'+

                        '</div>'+
                        '<table  id="tb_suggestions" class="table table-responsive  table-bordered">'+

                        '<thead>'+

                        '<tr>'+



                        '<th>Query Suggestions</th>'+

                        '<th>Text Complexity</th>'+

                        '</tr>'+

                        '</thead>'+

                        '<tbody id="tb_suggestions_body">'+
                        tablebody + '</tbody>'+

                        '</table>'+
                        '</div>'+
                        '<div class="form-group">'+

                        '<button type="button" id="post" class="btn btn-link waves-effect">SUBMIT</button>'+

                        ' <button type="button" class="btn btn-link waves-effect" id="close" data-dismiss="modal">CLOSE</button>'+
                        '</div>'+

                        '</form>'+



                        '</div>';

                }

            });

            $("#tb_suggestions tr").click(function(){
                $(this).addClass('selected').siblings().removeClass('selected');
                var value =$ (this).find('td:first').html();
                /* alert(value) */;
            });

            $('.ok').on('click', function(e){
                alert($("#tb_suggestions tr.selected td:first").html());
            });

            $('body').find('button#post').off();
            $('body').find('button#close').off();



            $('body').on('click','button#close',function(event){
                $('#searchinput').popover('destroy');

                clearTimeout(timer);
                timer = null;
            });

            // $(window).on('load', function(){
            //     $('#searchinput').val('');  });

            $('body').on('click','button#post',function(event){

                event.preventDefault();
                var sessionid = '<?php if (isset($sessionid)) echo $sessionid ?>';
                var searchid = '<?php if (isset($searchid)) echo $searchid ?>';
                var trigger  = searchquery;
                searchquery = $('#searchinput').val();
                var selection ;
                $.each(suggestions,function (i,val){
                    var id  = val.id;
                    var islike = $('#like_'+id).parent().hasClass('active');
                    console.log(val.suggestion,islike);
                    if (islike == true && selection == null)
                        selection = val;
                    suggestions[i].islike = islike;

                });
                var datal ={
                    sessionid : sessionid,
                    searchid :searchid,
                    query :searchquery,
                    trigger : trigger,
                    suggestions : suggestions
                };

                $.ajax({
                    url : 'postsuggestions.php',
                    data : datal,

                    type : 'POST',

                    success: function(data){
                        $("#tb_suggestions").shuffleRows();
                        $('#searchinput').popover('hide');
                        $('#searchinput').val(selection.suggestion);

                        $('#searchid').val(data.id);

                        $('#search-form').submit();
                        timer.clearTimeout();
                        timer = null;

                    }

                });

           });



            $('#searchinput').popover('show');
            $("#tb_suggestions").shuffleRows();


        }


        $("#searchinput").on('keydown',function( event ) {


            if (timer == null){
                //event.preventDefault();
                console.log("Time out triggered");
                timer = setTimeout(loadpopover,timeout);
            }

        });

        $(".link").click (function (){
            console.log ("clicked");
            var link =$(this).attr('href');
            var sessionid = '<?php if (isset($sessionid)) echo $sessionid ?>';
            var searchid = '<?php if (isset($searchid)) echo $searchid ?>';
            var datal ="sessionid="+sessionid+"&url="+link+"&searchid="+searchid;
            $.ajax({
                url : 'postlink.php',
                data : datal,
                type : 'POST',


                success  : function (data){
                    console.log (data);
                    console.log (datal);
                }
            });
        });
    });
</script>


<script src="jquery-ui/ui/jquery.ui.core.js"></script>
<script src="jquery-ui/ui/jquery.ui.widget.js"></script>
<script src="jquery-ui/ui/jquery.ui.position.js"></script>
<script src="jquery-ui/ui/jquery.ui.autocomplete.js"></script>
<script type="application/javascript">


    $(document).ready(function () {
    });





    </body>
    </html>

