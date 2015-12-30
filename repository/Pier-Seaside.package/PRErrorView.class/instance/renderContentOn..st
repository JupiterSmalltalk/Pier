rendering
renderContentOn: html
	self requestContext response status: self status.
	self renderErrorOn: html.
	self renderSolutionsOn: html