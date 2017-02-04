private
descriptionType
	"no pragma here as we don't want to automatically include this description, instead 
	BOPortion>>#magritteDescription conditional adds this description"
	^ MASingleOptionDescription new
		optionsAndLabels: (self class typeSymbolsAndLabels
			copyFrom: 2 to: 3);
		accessor: #type;
		priority: 50;
		label: 'Type';
		beEditable;
		beRequired;
		yourself