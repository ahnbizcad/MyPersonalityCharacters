(function() {
	var declarationURL = "http://www.archives.gov/exhibits/charters/print_friendly.html?page=declaration_transcript_content.html&title=NARA%20%7C%20The%20Declaration%20of%20Independence%3A%20A%20Transcription";
	var billOfRightsURL = "http://www.archives.gov/exhibits/charters/print_friendly.html?page=bill_of_rights_transcript_content.html&title=The%20Bill%20of%20Rights%3A%20A%20Transcription";

	var onFetchSuccessController1 = function(spritzText) {
		$("#spritzer1").data("controller").startSpritzing(spritzText);	
	};
	
	var onFetchError = function(error) {
		alert("Unable to Spritz: " + error.message);
	};
	
	var onStartSpritz1Click = function() {
		SpritzClient.fetchContents(declarationURL, onFetchSuccessController1, onFetchError);
	};
	
	var onFetchSuccessController2 = function(spritzText) {
		$("#spritzer2").data("controller").startSpritzing(spritzText);	
	};
	
	var onStartSpritz2Click = function() {
		SpritzClient.fetchContents(billOfRightsURL, onFetchSuccessController2, onFetchError);
	};
	
	var init = function() {
		// Attach controllers' containers to this page's "spritzer" containers
		var spritzer1 = $("#spritzer1");
		new SPRITZ.spritzinc.SpritzerController().attach(spritzer1);
		registerSpritzEventListeners(spritzer1);
		$("#start1").on("click", onStartSpritz1Click);			
		
		var spritzer2 = $("#spritzer2");
		new SPRITZ.spritzinc.SpritzerController().attach(spritzer2);
		registerSpritzEventListeners(spritzer2);
		$("#start2").on("click", onStartSpritz2Click);					
	};
	
	function registerSpritzEventListeners(container) {
		var id = container[0].id;
		container.on("onSpritzPlay", function(event, position) {console.log(id + ".onSpritzPlay: " + position);});
		container.on("onSpritzPause", function(event, position) {console.log(id + ".onSpritzPause: " + position);});
		container.on("onSpritzRewind", function(event, position) {console.log(id + ".onSpritzRewind: " + position);});
		container.on("onSpritzBack", function(event, position) {console.log(id + ".onSpritzBack: " + position);});
		container.on("onSpritzForward", function(event, position) {console.log(id + ".onSpritzForward: " + position);});
		container.on("onSpritzComplete", function(event) {console.log(id + ".onSpritzComplete");});
		container.on("onSpritzSpeedChange", function(event, speed) {console.log(id + ".onSpritzSpeedChange: " + speed);});		
		container.on("onProgressChange", function(event, completed) {console.log(id + ".onProgressChange: " + completed);});
	}
	
	$(document).ready(function() {
		init();
	});

})();

