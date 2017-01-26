accessing-descriptions
descriptionText
	<magritteDescription>
	^ MAMemoDescription new
		default: self class defaultText;
		parameterName: 'text';
		accessor: #text;
		priority: 100;
		label: 'Text';
		yourself