check defaults
isNil: aDescription
	^ (structure readUsing: aDescription) isNil