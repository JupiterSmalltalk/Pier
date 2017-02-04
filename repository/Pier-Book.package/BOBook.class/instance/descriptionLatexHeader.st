descriptions
descriptionLatexHeader
	<magritteDescription>
	^ MAMemoDescription new
		comment: 'Everythign that appears at the top of the generated code, before the document begins.';
		accessor: #latexHeader;
		label: 'Header';
		priority: 1000;
		group: 'LaTeX';
		lineCount: 10;
		beEditable;
		yourself