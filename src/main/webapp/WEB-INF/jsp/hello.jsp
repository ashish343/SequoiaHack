
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Indijoe Sizzlers</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="/resources/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/css/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Indijoe Sizzlers</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="">
                <ul class="nav navbar-nav">
                    <li class="">
                        <a href="/">   Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="/mysettings"> My Restaurant Settings</a>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard <small>Statistics Overview</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-comments fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge" id="tweet-counter">2</div>
                                        <div>New Tweets!</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-shopping-cart fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">124</div>
                                        <div>New Orders!</div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

            </div>
                <!-- /.row -->

                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-twitter fa-fw"></i>Twitter Feed</h3>
                            </div>
                            <div class="panel-body">
                                <div id="twitter_feed">
                                    <a class="twitter-timeline" href="https://twitter.com/hashtag/seqhack" data-widget-id="513393108180926464">#seqhack Tweets</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i>Generate QR Code</h3>
                            </div>
                            <div class="panel-body">

                                <div style="text-align:center">
                                <button type="button" class="btn btn-lg btn-success" onclick="generateQrCode('qrcode')">Generate QR Code</button>
                                <br/><br/><br/><br/>
                                <div id="qrcode" style="padding-left:35px"></div>
                            </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i>Settings</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-twitter-square"></i></span>
                                    <input type="text" class="form-control" id="twitter-text" placeholder="Twitter Tweet" value="Tweet this #twitter">
                                </div>

                                <div class="form-group input-group">
                                    <span class="input-group-addon "><i class="fa fa-facebook"></i></span>
                                    <input type="text" class="form-control" id="fb-text" placeholder="Facebook Share"
                                    value="Like us on facebook @facebook">
                                </div>

                                <div class="form-group input-group">
                                    <span class="input-group-addon ">TableID</span>
                                    <input type="text" class="form-control" id="table-id" placeholder="Table ID"
                                    value="2">
                                </div>

                                <div class="form-group">
                                    <label>Reward Select</label>
                                    <select class="form-control" id="reward-type">
                                        <option>Suprise Gift</option>
                                        <option>Instant Reward</option>
                                        <option>200 Cash Coins</option>
                                    </select>
                                </div>


                            </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


</body>
 <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resources/js/pusher.min.js"></script>
    <script type="text/javascript" src="/resources/js/qrcode.min.js"></script>
<script type="text/javascript">

var no_of_tables = 12;
var all_tables = d3.range(no_of_tables);


function drawTables(all_tables){

    var div_id = "#tables_div";

    var colors = d3.scale.category10();

    var xPadding = 75;
    var yPadding = 100;

    var margin = {top: 0, right: 10, bottom: 50, left: 10},
        width = 1000 - margin.left - margin.right,
        height = 600 - margin.top - margin.bottom;

        var svg = d3.select(div_id).append("svg")
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .attr("style","float:left")


        var tables = svg.selectAll("table-circle")
        .data(all_tables)
        .enter()
        .append("circle")
        .attr("cy",function(d,i){
            return (i%3)*200+yPadding;
        })
        .attr("cx",function(d,i){
            return 200*(i%4)+xPadding;
        })
        .attr("r",function(d){
            return 50;
        })
        .style("cursor","pointer")
        .style("fill",function(d,i){
            var color = colors(i)
            d3.select(this)
                .attr("pre-color",color)
            return color;
        })
        .attr("class",function(d,i){
            return "table-"+i;
        })
        .on("click",function(d,i){

            var pre_color = d3.select(this).attr("pre-color")
            d3.select(this)
                .transition()
                .delay(0)
                .duration(500)
                .attr("r","50")
                .style("fill",function(d,i){
                    return pre_color;
                })
                .attr("stroke-width","0")
        });

        svg.selectAll("g-text").data(all_tables)
            .enter().append("text")
            .attr("x",function(d,i){
                return 200*(i%4)+xPadding;
            })
            .attr("y",function(d,i){
                return (i%3)*200+yPadding+10;
            })
            .attr("stroke-width","2")
            .attr("style","fill:#000;font-size:30px")
            .attr("text-anchor","middle")
            .text(function(d,i){
                return  i+""
            })
}

drawTables(all_tables)

var myPusherFunc = function() {
    Pusher.log = function(message) {
          if (window.console && window.console.log) {
            window.console.log(message);
          }
        };

        var pusher = new Pusher('1f7298f8e64c81a0d7de');
        var channel = pusher.subscribe('R1');
        channel.bind('notify_order', function(data) {
            handleNotifications(data);
        });
}

myPusherFunc();

function handleNotifications(data){
    console.log(data);
    var table_id = data["message"];
    animateTable(table_id);
    updateTweetCounter();

}

function updateTweetCounter(){
    var current_tweets = $("#tweet-counter").html();
    current_tweets = parseInt(current_tweets);
    console.log(current_tweets);
    var updated_tweets = current_tweets + 1;
    $("#tweet-counter").html(updated_tweets);
}


function animateTable(table_id){
    console.log(table_id);
    f = d3.select(".table-"+table_id)
        .transition()
        .delay(0)
        .duration(700)
        .attr("r",function(d,i){
            return 70;
        })
        .style("fill",function(d){
            return "red"
        })
        .attr("stroke","black")
        .attr("stroke-width","2");
}

//handleNotifications({message: 2})

function generateQrCode(div_id){

    $("#"+div_id).html("")

    var qr_code_text = "dummy text";
    var fb_text = $("#fb-text").val();
    var tw_text = $("#twitter-text").val();
    var reward_type = $("#reward-type").val();
    var table_id = $("table-id").val();

    qr_code_text = "fb_text=" + fb_text + ";tw_text=" + tw_text + ";reward_type=" + reward_type +";rId=r1;tableNo="+table_id+";";


    console.log(fb_text,tw_text,reward_type);

    var qrcode = new QRCode(div_id, {
        text: qr_code_text,
        width: 350,
        height: 350,
        colorDark : "#000000",
        colorLight : "#ffffff",
        correctLevel : QRCode.CorrectLevel.H
    });

    //$("#"+div_id).append(button_html);
   // printImg("qrcode")
}

function printImg(div_id) {
    console.log("here");
    var someimage = document.getElementById(div_id);
    var myimg = someimage.getElementsByTagName('img')[0];
    var mysrc = myimg.src;
    console.log(mysrc)
    var pwin = window.open(mysrc,"_blank");
    pwin.onload = function () {window.print();}
}

</script>
</html>
