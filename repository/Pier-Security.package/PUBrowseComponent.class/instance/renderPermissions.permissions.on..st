rendering
renderPermissions: aStructure permissions: aCollection on: html
	| current short |
	current := self context structure: aStructure.
	self permissions do: [ :each |
		short := (aCollection includes: each)
			ifTrue: [ each label first asLowercase ]
			ifFalse: [ $- ].
		(each command isValidIn: current)
			ifFalse: [ 
				html span 
					title: each label; 
					with: short ]
			ifTrue: [
				html anchor
					goto: (self context
						structure: aStructure
						command: (each command new
							successAnswer: self context;
							cancelAnswer: self context;
							yourself));
					title: each label;
					with: short ] ]