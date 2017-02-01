*pier-documents-accessing
magritteDescription 
	| documents |
	documents := self documents.
	documents isEmpty ifTrue: [ ^ super magritteDescription ].

	^ super magritteDescription copy
		addAll: (documents keys collect: [ :each |
			PRDocumentWidgetDescription new
				parameterName: 'default';
				accessor: (PRDocumentWidgetAccessor on: #documents key: each);
				label: 'Default';
				priority: 120;
				yourself ]);
		yourself