updating-extras
updateCanonical: aHtmlRoot
	"Defines the canonical URL, the URL for the current page that should be used when search engines index or when people bookmark the current page."

	aHtmlRoot link
		relationship: 'canonical';
		url: self context url