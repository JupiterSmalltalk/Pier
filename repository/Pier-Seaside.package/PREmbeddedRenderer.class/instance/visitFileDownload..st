visiting-structure
visitFileDownload: aStructure
	<internal: 'application/' priority: 0>
	
	(self anchorFor: link)
		goto: (self context structure: aStructure view: PRDownloadView);
		with: [ self visitLink: link ]