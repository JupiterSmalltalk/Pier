*pier-seaside-protected
updateRoot: aHtmlRoot
	"Override customize the <head> section of an HTML document."

	aHtmlRoot meta
		name: 'robots';
		content: self robots.
	aHtmlRoot bodyAttributes
		addClass: self cssClass