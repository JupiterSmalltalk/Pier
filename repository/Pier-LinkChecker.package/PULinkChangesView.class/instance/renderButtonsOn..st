rendering
renderButtonsOn: html
	html submitButton
		with: 'Refresh'.
	html submitButton
		callback: [ self answer ];
		with: 'Close'