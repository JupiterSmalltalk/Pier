updating
updateBody: aHtmlRoot
	aHtmlRoot bodyAttributes addClass: self structure cssClass.
	aHtmlRoot meta name: 'generator'; content: 'Pier - Magritte - Seaside'