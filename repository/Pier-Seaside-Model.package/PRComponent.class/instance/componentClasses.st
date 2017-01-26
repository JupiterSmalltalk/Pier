accessing
componentClasses
	| sortBlock |
	sortBlock := [ :a :b | 
		a groupLabel = b groupLabel
			ifTrue: [ a label < b label ]
			ifFalse: [ a groupLabel < b groupLabel ] ].
	^ ((PRWidget allSubclasses reject: [ :each | each isAbstract ]) asArray 
		sort: sortBlock;
		yourself) ,
	  ((WAComponent allSubclasses select: [ :each | each canBeRoot ]) asArray
		sort: sortBlock;
		yourself)