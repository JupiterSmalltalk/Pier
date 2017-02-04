descriptions
descriptionLatexFooter
	<magritteDescription>
	^ MAMemoDescription new
		comment: 'Everything that appears in the backmatter of the book, before the document ends.';
		accessor: #latexFooter;
		label: 'Footer';
		priority: 1100;
		group: 'LaTeX';
		lineCount: 5;
		beEditable;
		yourself