visiting-structure
visitFile: aStructure
	"This code does not use the Magritte rendering to be able to add additional attributes to the generated tags. Similar to the internal embedded links it goes the pragmas and checks for the first match with the given mimetype. If no renderer can be found, simply put a link."

	| pragmas |
	aStructure file ifNil: [ ^ self ].
	parent structure: aStructure during: [
		(link hasParameter: 'anchor') ifTrue: [
			html anchor name: (aStructure name
				select: [ :each | each isAlphaNumeric ]) ].
		(link hasParameter: 'download')
			ifTrue: [ ^ self visitFileDownload: aStructure ].
		pragmas := Pragma
			allNamed: #internal:priority:
			from: self class
			to: PREmbeddedRenderer
			sortedByArgument: 2.
		pragmas do: [ :pragma |
			(aStructure file mimetype beginsWithSubCollection: pragma arguments first)
				ifTrue: [ ^ self perform: pragma selector with: aStructure ] ].
		self visitFileDownload: aStructure ]