javscript
addIFrameStyleIfNotAlreadyInstalledJS
	^ '
var alreadyInstalledIFrameStyles = [];

var addIFrameStyleIfNotAlreadyInstalled = function (style) {
	if ($.inArray(style, alreadyInstalledIFrameStyles) == -1) {
		$("#iFrameView").contents().find("head").append(style);
		alreadyInstalledIFrameStyles.push(style);
	}
}
'