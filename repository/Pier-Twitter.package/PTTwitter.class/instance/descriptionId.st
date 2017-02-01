accessing-descriptions
descriptionId
	<magritteDescription>
	^ MANumberDescription new
		xmlName: #id;
		accessor: #id;
		beRequired;
		yourself