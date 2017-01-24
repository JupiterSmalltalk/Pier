rendering
renderActionsOn: html
	html form: [
		html submitButton
			callback: [ MCPlatformSupport garbageCollect ];
			text: 'Garbage Collect' ]