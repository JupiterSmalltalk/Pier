updating
updateRoot: anHtmlRoot 
	super updateRoot: anHtmlRoot.

	anHtmlRoot javascript url: 'http://s7.addthis.com/js/250/addthis_widget.js'