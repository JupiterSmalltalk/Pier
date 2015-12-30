visiting-document
visitExternalLink: aLink
	(self anchorFor: aLink)
		class: 'external'; 
		url: aLink url;
		with: [ self visitLink: aLink ]