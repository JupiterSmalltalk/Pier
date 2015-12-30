accessing-description
descriptionStructures
	<magritteDescription>
	| aStructure |
	aStructure := self currentStructures anyOne.
	^ MAToManyRelationDescription new
		classes: self componentsOrStructures;
		reference:
				(MAContainer new
						add: aStructure descriptionTitle;
						add: aStructure descriptionName;
						yourself);
		accessor: #structures;
		label: 'Order';
		priority: 200;
		beDefinitive;
		beOrdered;
		yourself