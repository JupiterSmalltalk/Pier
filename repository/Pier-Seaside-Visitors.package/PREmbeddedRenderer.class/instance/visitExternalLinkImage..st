visiting-document
visitExternalLinkImage: aLink
	<external: '.png' priority: 0>
	<external: '.jpg' priority: 0>
	<external: '.jpeg' priority: 0>
	<external: '.gif' priority: 0>

	html image
		attributes: (self attributesFor: aLink);
		title: aLink title;
		url: aLink url