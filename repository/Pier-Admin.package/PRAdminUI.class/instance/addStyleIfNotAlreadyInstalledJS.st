javscript
addStyleIfNotAlreadyInstalledJS
	| initiallyLoadedHeadStyles installedStyles |
	initiallyLoadedHeadStyles := self requestContext headStyles asJavascript.
	installedStyles := 'var alreadyInstalledStyles = ',  initiallyLoadedHeadStyles, ';'.
	
	^ installedStyles, '
var addStyleIfNotAlreadyInstalled = function (style) {
	if ($.inArray(style, alreadyInstalledStyles) == -1) {
		$("head").append(style);
		alreadyInstalledStyles.push(style);
	}
}
'