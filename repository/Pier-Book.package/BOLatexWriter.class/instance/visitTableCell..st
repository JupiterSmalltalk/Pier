visiting-document
visitTableCell: aTableCell
	aTableCell isHeading
		ifFalse: [ super visitTableCell: aTableCell ]
		ifTrue: [ latex tag: 'textbf'; curly: [ super visitTableCell: aTableCell ] ]