initialization
setKernel: aKernel
	super setKernel: aKernel.
	history := OrderedCollection new.
	(aKernel notNil and: [ aKernel persistency notNil ])
		ifTrue: [ aKernel persistency do: [ :each | self add: each ] ]