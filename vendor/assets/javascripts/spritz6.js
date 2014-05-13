(function() {
	var spritzController = null;

	var onFetchSuccessController = function(spritzText) {
		spritzController.startSpritzing(spritzText);
	};
	
	var onFetchError = function(error) {
		alert("Unable to Spritz: " + error.message);
	};
	
	var onStartSpritzClick = function(event) {
		var element = $(event.currentTarget);
		var url = element.data("url");
		SpritzClient.fetchContents(url, onFetchSuccessController, onFetchError);
	};

	function showProgress(completed, total) {
		$("#wordNumber").text(completed);
		$("#wordTotal").text(total);
	}
	


// The default SpritzControler's options that could be customized:
//	
//	var spritzerOptions = {
//			"redicleWidth" : 	340,
//			"redicleHeight" : 	70,
//			"defaultSpeed" : 	250, 
//			"speedItems" : 		[250, 300, 350, 400, 450, 500, 550, 600], 
//			"controlButtons" : 	["pauseplay", "rewind", "back"],
//			"controlTitles" : {
//				"pause" : 		"Pause",
//				"play" : 		"Play",
//				"rewind" : 		"Rewind", 
//				"back" : 		"Previous Sentence"
//			}
//	};

	// Customized options
	var customOptions = {
			"redicleWidth" : 	250,									// Specify Redicle width
			"redicleHeight" : 	50,										// Specify Redicle height
			"defaultSpeed" : 	600, 									// Specify default speed
			"speedItems" : 		[100, 200, 300, 400, 500, 600], 		// Specify speed options
			"controlButtons" : 	["rewind"],								// Specify a single control button
	};
	


	var init = function() {
		$("#startSpritz").on("click", onStartSpritzClick);			

		// Construct a SpritzController passing the customization options
		spritzController = new SPRITZ.spritzinc.SpritzerController(customOptions);
		
		// Attach the controller's container to this page's "spritzer" container
		spritzController.attach($("#spritzer"));
		
		// Supply custom progress reporter
		spritzController.setProgressReporter(showProgress);
	};
	
	
	$(document).ready(function() {
		init();
	});
})();

