rendering
renderButtonsOn: html
	super renderButtonsOn: html.
	html submitButton
		callback: [ self check ];
		with: 'Check'