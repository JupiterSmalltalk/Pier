visiting-document
visitExternalLink: aLink
	(self anchorFor: aLink)
		url: aLink url;
		class: 'external';
		with: [ self visitLink: aLink ]