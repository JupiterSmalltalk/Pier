stylesheets
rootStylesheetFile
	| styleSheetName |
	"name each sheet after the distribution so that we don't have caching issues"
	styleSheetName := self class name greaseString, '.css'.

	^ rootStylesheetFile ifNil: [ 
		"use an MAMemoryFileModel so that the image can be moved without worrying
		about stylesheet files in the filesystem"
		rootStylesheetFile := (PRFile named: styleSheetName)
			file: MAMemoryFileModel new;
			filename: styleSheetName;
			mimetype: 'text/css';
			contents: self rootStyleSheetContents;
			yourself ]