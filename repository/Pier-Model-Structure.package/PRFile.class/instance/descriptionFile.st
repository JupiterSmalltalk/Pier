accessing-description
descriptionFile
	<magritteDescription>
	^ MAFileDescription new
		accessor: #file;
		priority: 300;
		label: 'File';
		beEditable;
		yourself