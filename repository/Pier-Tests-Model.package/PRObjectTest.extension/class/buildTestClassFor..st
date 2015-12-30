*pier-tests-model
buildTestClassFor: aClass 
	" self buildTestClassFor: PRObject "
	| thisName thisClass thisCategory parentClass |
	thisName := (aClass name , 'Test') asSymbol.
	(thisName beginsWith: 'PR') ifFalse: [ ^ self ].
	thisClass := GRPlatform current magritteClassNamed: thisName.
	thisCategory := 'Pier-Tests-' , (aClass category copyAfterLast: $-).
	parentClass := self = thisClass 
		ifTrue: [ self superclass ]
		ifFalse: 
			[ GRPlatform current magritteClassNamed: (aClass superclass name , 'Test') asSymbol ].
	thisClass := parentClass 
		subclass: thisName
		instanceVariableNames: (thisClass isNil 
				ifFalse: [ thisClass instanceVariablesString ]
				ifTrue: [ String new ])
		classVariableNames: ''
		poolDictionaries: ''
		category: thisCategory.
	thisClass 
		compile: 'actualClass
	^ ' , aClass name
		classified: #private.
	thisClass class 
		compile: 'isAbstract
	^ ' , aClass isAbstract greaseString
		classified: #testing.
	aClass subclassesDo: [ :each | self buildTestClassFor: each ]