<script type="text/javascript" src="//sdk.spritzinc.com/jQuery/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="//sdk.spritzinc.com/js/1.0/js/spritz.min.js"></script>
<script type="text/javascript">
	var SpritzSettings = {
	         clientId: "7025145b79bcd478b",
	         redirectUri:"http://mypersonalitycharacters.herokuapp.com/pages/login_success.html"
	};

	// Find Spritzer container
	var container = $("#spritzer1"); // Bind spritzer notification event listener
	container.on("onSpritzPlay", function(event, position) {console.log("onSpritzPlay: " + position);});
	container.on("onSpritzSpeedChanged", function(event, speed) {console.log("onSpritzSpeedChanged: " + speed);});
	container.on("onSpritzCompleted", function(event) {alert("Spritz Completed");});
	container.on("onSpritzBack", function(event, position, pausePos) {console.log("onSpritzBack: " + position + "/" + pausePos);});

	var onStartSpritzClick = function(event) {
    var text = $('#spritzText').val();
    var locale = "en_us;";
 
    // Send to SpritzEngine to translate
    SpritzClient.spritzify(text, locale, onSpritzifySuccess, onSpritzifyError);
};
</script> 