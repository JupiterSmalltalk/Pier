enumerating
select: aBlock
	"Evaluate aBlock for every structure visited by the receiver and answer a collection for which aBlock evaluates to ==true==."

	^ Array streamContents: [ :stream |
		self do: [ :each |
			(aBlock value: each)
				ifTrue: [ stream nextPut: each ] ] ]