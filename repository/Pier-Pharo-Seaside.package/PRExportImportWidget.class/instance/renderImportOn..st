rendering
renderImportOn: html
	| contents |
	html heading level: 2; with: 'Import'.
	html paragraph: 'Importing a snapshot either replaces the existing kernel or just adds all included pages to the current kernel. In either case, make sure to merge the external files into ' , MAFileDatabase baseDirectory fullName printString , ' and to check security properties.'.
	html paragraph: [
		html radioGroup: [ :group |
			html label: [
				html radioButton
					group: group;
					selected: self replace not;
					callback: [ self replace: false ].
				html text: 'Import Pages' ].
			html break.
			html label: [ 
				html radioButton
					group: group;
					selected: self replace;
					callback: [ self replace: true ].
				html text: 'Replace Kernel' ] ] ].
	html paragraph: [
		html fileUpload
			callback: [ :file | contents := file rawContents ] ].
	html paragraph: [
		html submitButton
			callback: [ self exporterImporter import: contents into: self context kernel ];
			with: 'Import' ]