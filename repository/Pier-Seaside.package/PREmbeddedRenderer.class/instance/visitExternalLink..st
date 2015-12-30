visiting-document
visitExternalLink: aLink
	"Goes through all the pragmas and check for the first match with the given URL."
	
	| pragmas |
	pragmas := Pragma
		allNamed: #external:priority:
		from: self class 
		to: PREmbeddedRenderer
		sortedByArgument: 2.
	pragmas do: [ :pragma |
		(aLink url greaseString includesSubstring: pragma arguments first caseSensitive: false)
			ifTrue: [ ^ self perform: pragma selector with: aLink ] ].
	super visitExternalLink: aLink