private
buildComponent
	^ (self buildDescription asComponentOn: self command)
		onAnswer: [ :result | self execute: result ];
		addValidatedForm;
		yourself