javscript
addIFrameScriptIfNotAlreadyInstalledJS
	^ '
var alreadyInstalledIFrameScripts = [];
var addIFrameScriptUrlIfNotAlreadyInstalled = function (url) {
	if ($.inArray(url, alreadyInstalledIFrameScripts) == -1) {
		/* set cache to true to ensure jQuery doesnt add random query parameters to end of request
		async is false to force the scripts to load in the order they are specified */
		$.ajax({"url":url,"async":false,"dataType":"script","cache":true, "success":function(script){evalScriptWithinIFrame(script)}});
		alreadyInstalledIFrameScripts.push(url);
	}
}
var addIFrameScriptIfNotAlreadyInstalled = function (script) {
	if ($.inArray(script, alreadyInstalledIFrameScripts) == -1) {
		evalScriptWithinIFrame (script);
		alreadyInstalledIFrameScripts.push(script);
	}
}

var evalScriptWithinIFrame = function(script) {
	try {
		jQuery("#iFrameView")[0].contentWindow.eval(script);
	} catch(e) {
		console.log("Error occurred: ");
		console.log(e);
		console.log("while evaluating");
		console.log(script);
		debugger;		
	}
}
'