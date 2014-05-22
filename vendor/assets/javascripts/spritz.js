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

  var texts = {};

  function getTexts(){
    var receivedTexts;
    $('main').filter(function(){
      this.id.match(/spritzable-[0-9]+/)
    });
    //texts.push(receivedTexts);
  };

  function onStartSpritzClick(event) {    
    var locale = "en_us;";
    var text = $('#spritzable-2').text();

    // Send to SpritzEngine to translate
    SpritzClient.spritzify(text, locale, onSpritzifySuccess, onSpritzifyError);
  };

  function showProgress(completed, total) {
    $("#spritzerWordProgress").text(completed);
    $("#spritzerWordTotal").text(total);
  };

  var init = function() {     

    getTexts();

    $("#startSpritz").on("click", onStartSpritzClick);  

    // Construct a SpritzController passing the customization options
    spritzController = new SPRITZ.spritzinc.SpritzerController(customOptions);
    
    // Attach the controller's container to this page's "spritzer" element
    spritzController.attach($("#spritzer"));
    
    // Supply custom progress reporter
    spritzController.setProgressReporter(showProgress);
      
  };

  $(document).ready(function() {
    init();
  });

})();