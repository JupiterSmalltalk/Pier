*pier-book-private
bookLabel: aString class: aClassString target: aStructure to: aDefinitionList
	| number |
	^ aDefinitionList
		add: (PRTermItem with: (PRRaw content: (aStructure isNil
			ifTrue: [ '&nbsp;' ]
			ifFalse: [ aString ])));
		add: (PRDataItem with: (aStructure isNil
			ifTrue: [ PRRaw content: '&nbsp;' ]
			ifFalse: [
				number := aStructure number.
				number isNil 
					ifTrue: [ number := String new ]
					ifFalse: [ number := number , ' ' ].
				PRInternalLink new 
					parameterAt: 'title' put: number , aStructure title;
					parameterAt: 'class' put: aClassString;
					target: aStructure;
					yourself ]));
		yourself