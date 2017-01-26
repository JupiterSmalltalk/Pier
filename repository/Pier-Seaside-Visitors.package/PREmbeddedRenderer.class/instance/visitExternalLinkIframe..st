visiting-document
visitExternalLinkIframe: aLink
	<external: '.htm' priority: 0>
	<external: '.html' priority: 0>

	html iframe
		attributes: (self attributesFor: aLink);
		title: aLink title;
		url: aLink url