<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="content-type">
<title>Firelet</title>

<script src="static/jquery.tools.min.js"></script>

<style media="screen" type="text/css">

/* root element for tabs  */
ul.css-tabs {
    margin:0 !important;
    padding:0;
    height:30px;
    border-bottom:1px solid #666;
}

/* single tab */
ul.css-tabs li {
    float:left;
    padding:0;
    margin:0;
    list-style-type:none;
}

/* link inside the tab. uses a background image */
ul.css-tabs a {
    float:left;
    font-size:13px;
    display:block;
    padding:5px 30px;
    text-decoration:none;
    border:1px solid #666;
    border-bottom:0px;
    height:18px;
    background-color:#efefef;
    color:#777;
    margin-right:2px;
    -moz-border-radius-topleft: 4px;
    -moz-border-radius-topright:4px;
    position:relative;
    top:1px;
}

ul.css-tabs a:hover {
    background-color:#F7F7F7;
    color:#333;
}

/* selected tab */
ul.css-tabs a.current {
    background-color:#eee;
    border-bottom:2px solid #eee;
    color:#000;
    cursor:default;
}


/* tab pane */
.tabpane div {
    display:none;
    border:1px solid #666;
    border-width:0 1px 1px 1px;
    min-height:150px;
    padding:15px 20px;
    background-color:#eee;
}


#pageLogin
{
    font-size: 10px;
    font-family: verdana;
    text-align: right;
}



html, body {
  color: black;
  background-color: white;
  font: x-small "Lucida Grande", "Lucida Sans Unicode", geneva, verdana, sans-serif;
  margin: 0;
  padding: 0;
}


#header {
  height: 36px;
  width: 100%;
  background: #5ec2dd URL('static/header_inner.png') no-repeat;
  margin: 0 auto 0 auto;

}

#header div {
    color: #eef;
    text-align: right;
    padding: 8px 8px 0 0;
    font-size: 150%;
    font-weight: bold;
}


a.link, a, a.active {
  color: #369;
}


#main_content {
  color: black;
  font-size: 127%;
  background-color: white;
  width: 818px;
  margin: 0 auto 0 auto;
  border-left: 1px solid #aaa;
  border-right: 1px solid #aaa;
  padding: 10px;
}


#footer {
  color: #999;
  padding: .5em;
  font-size: 90%;
  text-align: center;
  width: 818px;
  margin: 0 auto 2px auto;
}

.code {
  font-family: monospace;
}

span.code {
  font-weight: bold;
  background: #eee;
}

.fielderror {
    color: red;
    font-weight: bold;
}

table td{
    border-color: #ddd;
    border-width: 0 1px 1px 0;
    border-style: solid;
    vertical-align: center;
}

table td:hover {
    background-color: #f4f4f4;
}

table td.hea {
    width: 200px;
}
table td.hea:hover {
    background-color: #eee;
}


table td img {
    margin: 1px;
}

.diff_chg {
    color: red;
    font-weight:bold;}
}
div#msgpane {
    width: 100%;
}
div#msgpane table {
    width: 100%;
}
.tooltip {
    display:none;
    background-color:#ffa;
    border:1px solid #cc9;
    padding:3px;
    font-size:13px;
    -moz-box-shadow: 2px 2px 11px #666;
    -webkit-box-shadow: 2px 2px 11px #666;
}

div#savereset {
    position: absolute;
    top: 50px;
    right: 20px;
}

.modal {
    background-color:#fff;
    display:none;
    width:350px;
    padding:15px;
    text-align:left;
    border:2px solid #333;

    opacity:0.8;
    -moz-border-radius:6px;
    -webkit-border-radius:6px;
    -moz-box-shadow: 0 0 50px #ccc;
    -webkit-box-shadow: 0 0 50px #ccc;
}

div#new_form {
    background-color:#fff;
    display:none;
    width:350px;
    padding:15px;
    text-align:left;
    border:2px solid #333;

    opacity:0.8;
    -moz-border-radius:6px;
    -webkit-border-radius:6px;
    -moz-box-shadow: 0 0 50px #ccc;
    -webkit-box-shadow: 0 0 50px #ccc;
}

input {
    background: #fafafa;
    border: 1px solid #333
}

input:hover { background: #fff}

// Message pane
div#msgpane {
    height:10em;
    overflow:auto;
}
div#msgslot {
    height:10em;
    overflow:auto;
}

table#msgs tr td.hea {
    width: 20px;
    vertical-align:middle;
}
table#msgs tr td.ts { width: 5em; }

div#gradient {
 border-top: 1px solid #ccc;
  position: relative;
  top: 15px;
  height: 15px;
  width: 100%;
  background: url('static/gradient.png') repeat-x;
  z-index: 4000;
}


</style>

</head>
<body>

    <div id="header"><div>Firelet</div></div>
    <div id="pageLogin">





%if not show_logout:
    <span><a href="/login" class="loginform" rel="#loginform">Login</a></span>
%end
%if show_logout:
    <span><a id="logout" href="/logout">Logout</a></span>
%end
    </div>
    <div id="savereset">
        <span>
            <button class="modalInput" rel="#savediag"><img src="static/save.png"  title="Save"> Save</button>
        </span>
        <span>
            <img src="static/reset.png" title="Reset" id="reset">
        </span>
    </div>

    <ul class="css-tabs">
        <li><a href="ruleset">Ruleset</a></li>
        <li><a href="hostgroups">Host Groups</a></li>
        <li><a href="hosts">Hosts</a></li>
        <li><a href="networks">Networks</a></li>
        <li><a href="services">Services</a></li>
        <li><a href="manage">Manage</a></li>
        <li><a href="monitor">Monitor</a></li>
    </ul>

    <div class="tabpane"><div style="display:block"></div></div>

    <div id="msgpane">
        <div id="gradient"></div>
        <div id="msgslot">
            <table id="msgs">
            </table>
        </div>
    </div>

    <div id="footer">
        <p>Distributed firewall management</p>
    </div>



<!-- save dialog -->
<div class="modal" id="savediag">
    <h2>Save configuration</h2>
    <p>Please insert a change description</p>
    <form>
        <input />
        <button type="submit"> OK </button>
        <button type="button" class="close"> Cancel </button>
    </form>
    <br />
</div>

<!-- login dialog -->
<div class="modal" id="loginform">
    <h2>Login</h2>
    <p>Please insert your credentials</p>
    <form>
        <input type="text" name="user" value="username" />
        <input type="text" name="pwd" value="password" />
        <button type="submit"> OK </button>
        <button type="button" class="close"> Cancel </button>
    </form>
    <br />
</div>

<script>

function refresh_msg()
{
    setTimeout("refresh_msg()",2000);
    t = $("div#msgslot").scrollTop();
    th = $("table#msgs").height();
    delta = th - t - 100;
    if (delta < 10) { $("table#msgs").load("/messages"); }
}


$(function() {

    $("ul.css-tabs").tabs("div.tabpane > div", {effect: 'ajax', history: true});
    refresh_msg();

    setTimeout(function() {
        $("div#msgslot").scrollTop(1000);
    },500);


    // Save and reset buttons

    $("div#savereset").hide();

    $.getJSON("save_needed", function(json){
        if (json.sn === true) $("div#savereset").show();
    });

    $("div#savereset img[title]").tooltip({
        tip: '.tooltip',
        effect: 'fade',
        fadeOutSpeed: 100,
        predelay: 800,
        position: "bottom right",
        offset: [15, -30]
    });

    $("div#savereset img").fadeTo("fast", 0.6);

    $("div#savereset img").hover(function() {
      $(this).fadeTo("fast", 1);
    }, function() {
      $(this).fadeTo("fast", 0.6);
    });


    $('img#reset').click(function() {
      $.post("reset");
      $('div#savereset').hide();
    });


    // Save form

    var triggers = $(".modalInput").overlay({
        mask: {
            color: '#ebecff',
            loadSpeed: 200,
            opacity: 0.9
        },
        closeOnClick: false
    });

    $("#savediag form").submit(function(e) {
        // close the overlay
        //triggers.eq(1).overlay().close();
        // get user input
        var input = $("input", this).val();
        // do something with the answer
        triggers.eq(1).html(input);
        $.post("save",{msg: input});
        // do not submit the form
        return e.preventDefault();
        triggers.hide();
    });

    // Login form

    var login = $(".loginform").overlay({
        mask: {
            color: '#ebecff',
            loadSpeed: 200,
            opacity: 0.9
        },
        closeOnClick: false
    });

    $("#loginform form").submit(function(e) {
        // close the overlay
        //login.eq(1).overlay().close();
        e.preventDefault();
        var user = $("input[name=user]", this).val();
        var pwd = $("input[name=pwd]", this).val();

        //login.eq(1).html(input);
        $.post("login",{user: user, pwd: pwd}, function(json){
            console.log(json);
            if (json.logged_in === true) {
                location.reload();
                over.eq(0).overlay().close();
            }
        }, "json"
        );

    });


    $('a#logout').click(function() {
        $.getJSON("logout", function(json){ location.reload(); });

    });

});


</script>
</body>

</html>