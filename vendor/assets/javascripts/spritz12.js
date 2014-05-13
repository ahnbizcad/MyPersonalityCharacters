(function() {
	var billOfRightsURL = "http://www.archives.gov/exhibits/charters/print_friendly.html?page=bill_of_rights_transcript_content.html&title=The%20Bill%20of%20Rights%3A%20A%20Transcription";

	var onFetchError = function(error) {
		alert("Unable to Spritz: " + error.message);
	};
	
	var onFetchSuccessController2 = function(spritzText) {
		$("#spritzer2").data("controller").startSpritzing(spritzText);	
	};
	
	var onStartSpritz2Click = function() {
		SpritzClient.fetchContents(billOfRightsURL, onFetchSuccessController2, onFetchError, 'p');
	};
	
	var init = function() {
		// Attach controller's container to this page's "spritzer" containers		
		var spritzer2 = $("#spritzer2");
		new SPRITZ.spritzinc.SpritzerController().attach(spritzer2);
		$("#start2").on("click", onStartSpritz2Click);					
	};
	
	$(document).ready(function() {
		init();
	});

})();

