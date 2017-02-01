accessing-editing
descriptionUrlComment
	<magritteDescription>
	^ MAMemoDescription new
		accessor: #urlComment;
		priority: 210;
		beReadonly;
		beEditable;
		label: '';
		yourself