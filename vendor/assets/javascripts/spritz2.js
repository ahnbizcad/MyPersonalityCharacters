(function() {
	var spritzController = null;

	
	var onFetchSuccessController = function(spritzText) {
		// Start spritzing
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
	
	var init = function() {
		$("#startSpritz").on("click", onStartSpritzClick);			

		// Construct a SpritzController
		spritzController = new SPRITZ.spritzinc.SpritzerController();
		
		// Attach the controller's container to this page's "spritzer" container
		spritzController.attach($("#spritzer"));
	};
	
	
	$(document).ready(function() {
		init();
	});
})();

