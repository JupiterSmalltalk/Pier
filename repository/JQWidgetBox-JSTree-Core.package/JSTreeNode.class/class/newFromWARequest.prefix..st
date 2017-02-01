instance creation
newFromWARequest: aWARequest prefix: aPrefixString
	^ self new
		id: (aWARequest at: aPrefixString , 'id' ifAbsent: [ nil ]);
		title: (aWARequest at: aPrefixString , 'title' ifAbsent: [ nil ]);
		type: (aWARequest at: aPrefixString , 'type' ifAbsent: [ nil ]);
		metadata: ((aWARequest at: aPrefixString , 'metadata' ifAbsent: [ nil ])
					ifNotNil: [ :value | 
						(value isEmptyOrNil not)
							ifTrue: [JSJsonParser parse: value ] ]);
		yourself