javscript
addScriptIfNotAlreadyInstalledJS
	| initiallyLoadedHeadScripts installedScripts |
	initiallyLoadedHeadScripts := self requestContext headScripts asJavascript.
	installedScripts := 'var alreadyInstalledScripts = ', initiallyLoadedHeadScripts, ';'.
	
	^ installedScripts, '
var addScriptUrlIfNotAlreadyInstalled = function (url) {
	if ($.inArray(url, alreadyInstalledScripts) == -1) {
		/* set cache to true to ensure jQuery doesnt add random query parameters to end of request
		async is false to force the scripts to load in the order they are specified */
		$.ajax({"url":url,"async":false,"dataType":"script","cache":true, "success":function(script) {
			try {
				window.eval(script);
			} catch(e) {
				console.log("Error occurred: ");
				console.log(e);
				console.log("while evaluating");
				console.log(script);
				debugger;					
			}
		}});
		alreadyInstalledScripts.push(url);
	}
}
var addScriptIfNotAlreadyInstalled = function (script) {
	if ($.inArray(script, alreadyInstalledScripts) == -1) {
		window.eval(script);
		alreadyInstalledScripts.push(script);
	}
}
'