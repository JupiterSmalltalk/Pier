rendering
renderErrorOn: html
	html paragraph: [ 
		html 
			text: 'The requested object '; 
			code: self requestContext request url;
			text: ' was not found on this server.' ]