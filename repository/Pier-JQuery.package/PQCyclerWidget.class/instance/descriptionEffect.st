accessing
descriptionEffect
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Effect';
		parameterName: 'effect';
		accessor: #effect;
		priority: 360;
		comment: 'The animation effect to be used.';
		options: self class effectChoices;
		default: self class effectChoices first;
		beRequired;
		beSorted;
		yourself