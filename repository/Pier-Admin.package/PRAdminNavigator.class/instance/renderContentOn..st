rendering
renderContentOn: html
	self renderNavigatorTreeOn: html.
	self renderRefreshButtonOn: html.
	self renderRenameJsSupportOn: html