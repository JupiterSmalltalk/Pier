rendering
renderExportOn: html
	html heading level: 2; with: 'Export'.
	html paragraph: 'Exporting a snapshot of the kernel does not include the history or any external files. If you plan to move the site to a new location make sure to copy the complete directory structure below ' , MAFileDatabase baseDirectory fullName printString , ' separately. Depending on the size of your site it might take a while to generate and download the snapshot.'.
	html paragraph: [
		html submitButton
			callback: [ self export: self context kernel ];
			with: 'Export' ]