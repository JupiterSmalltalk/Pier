accessing-description
descriptionComment
	<magritteDescription>
	^ MAMemoDescription new
		group: 'Additional Information';
		propertyAt: #public put: true;
		accessor: #comment;
		label: 'Comment';
		priority: 990;
		lineCount: 3;
		yourself