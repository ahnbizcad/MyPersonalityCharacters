(function() {
  var spritzController = null;

  var onSpritzifySuccess = function(spritzText) {
    spritzController.startSpritzing(spritzText);
  };
  
  var onSpritzifyError = function(error) {
    alert("Unable to Spritz: " + error.message);
  };
  
  var customOptions = {
    "redicleWidth" :    250,
    "redicleHeight" :   50,
    "defaultSpeed" :    300,
    "speedItems" :      [200, 300, 400, 500, 600, 700, 800],
    "controlButtons" :  ["rewind", "back", "pauseplay"],
    "controlTitles" :   {
                        "pause" :   "Pause",
                        "play" :    "Play",
                        "rewind" :  "Rewind",
                        "back" :    "Previous Sentence"
    }
  };

  function onStartSpritzClick(event) {
    var text = $('#si').val();
    var locale = "en_us;";
    
    // Send to SpritzEngine to translate
    SpritzClient.spritzify(text, locale, onSpritzifySuccess, onSpritzifyError);
  };

  function showProgress(completed, total) {
    $("#spritzer1WordProgress").text(completed);
    $("#spritzer1WordTotal").text(total);
  }

  var init = function() {     

    // Construct a SpritzController passing the customization options
    spritzController = new SPRITZ.spritzinc.SpritzerController(customOptions);
    
    // Attach the controller's container to this page's "spritzer" element
    spritzController.attach($("#spritzer1"));
    
    // Supply custom progress reporter
    spritzController.setProgressReporter(showProgress);

    $("#startSpritzer1").on("click", onStartSpritzClick);    
  };

  $(document).ready(function() {
    init();
  });

})();