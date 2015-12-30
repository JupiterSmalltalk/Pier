rendering
renderActionsOn: html
	html form: [
		html submitButton
			callback: [ Smalltalk garbageCollect ];
			text: 'Garbage Collect' ]