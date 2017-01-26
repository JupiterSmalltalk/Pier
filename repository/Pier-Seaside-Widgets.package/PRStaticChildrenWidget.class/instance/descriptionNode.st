accessing-description
descriptionNode
	<magritteDescription>
	| defaultValue |
	self context
		ifNil: [ defaultValue := nil ]
		ifNotNil: [ defaultValue := self context structure parents at:  1 ifAbsent: [ nil ] ].
	^ MASingleOptionDescription new
		default: defaultValue;
		accessor: #node;
		label: 'Node';
		beRequired;
		priority: 300;
		yourself