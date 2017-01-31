rendering-parts
renderData: aContext on: html
	| previous |
	previous := self 
		previousContextOf: aContext
		matching: [ :each | each structure == aContext structure ].
	aContext command magritteDescription do: [ :each |
		each isDocumentDescription ifTrue: [
			| source target |
			source := previous isNil
				ifFalse: [ each toString: (previous command readUsing: each) ].
			target := each toString: (aContext command readUsing: each).
			html render: (PRWordDiffAlgorithm from: source to: target) ] ]