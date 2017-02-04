descriptions
descriptionNote
	<magritteDescription>
	^ MAMemoDescription new
		propertyAt: #public put: true;
		accessor: #note;
		priority: 550;
		label: 'Note';
		lineCount: 5;
		beRequired;
		beEditable;
		yourself