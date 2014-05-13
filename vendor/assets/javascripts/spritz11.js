
var spritzer = null;

function onTextSelected() {
	var option = $('option:selected', this); 
    var values = option.val().split('|');
    var position = parseInt(values[0]);
    var mode = values[1];
    var url = values[2];
    
    spritzer.setUrl(url, position, mode);
    spritzer.loadText(false);
}

function onBtnSeekClick() {
	spritzer.seek(15, 'absolute');
}

$(document).ready(function() {
	// Add selection handler
    $('#textList').on('change', onTextSelected);
    $('#btnSeek').on('click', onBtnSeekClick);
});


jQuery(document).ready(function() {
	spritzer = jQuery('#spritzer').data('controller');
	
	// Set the url and initial position
	spritzer.setUrl('http://sdk.spritzinc.com/sampleText/WilburWrightLetter.html', 50);
	
	if (SpritzClient.isUserLoggedIn()) {
		// Load the source, and start playing when it loads
		spritzer.loadText(true);
	} else {
		// Since no user is logged in, we can't start automatically since a popup is required, 
		// and we may not be able to show it.
	}
});