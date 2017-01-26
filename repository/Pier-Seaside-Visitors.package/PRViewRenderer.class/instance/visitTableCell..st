visiting-document
visitTableCell: anObject
	(anObject isHeading ifTrue: [ html tableHeading ] ifFalse: [ html tableData ])
		style: (anObject align isNil ifFalse: [ 'text-align: ' , anObject align ]);
		with: [ super visitTableCell: anObject ]