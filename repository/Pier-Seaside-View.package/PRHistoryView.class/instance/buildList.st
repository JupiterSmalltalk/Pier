private
buildList
	^ Array streamContents: [ :stream |
		self context kernel persistency reverseDo: [ :each | 
			(self isVisible: each)
				ifTrue: [ stream nextPut: each ] ] ]