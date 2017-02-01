accessing-description
descriptionText
	<magritteDescription>
	^ MAMemoDescription new
		xmlName: #text;
		accessor: #text;
		beRequired;
		yourself