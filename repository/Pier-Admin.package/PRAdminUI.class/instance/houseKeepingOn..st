rendering
houseKeepingOn: html
	self ensureThatKeysOnMainPageAndPreviewIFrameDontClashOn: html.
	self renderKeepSessionAliveTimerOn: html