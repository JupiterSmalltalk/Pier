*pier-seaside-core-rendering
renderOn: html
	self patchsetDo: [ :operation :object :index |
		operation = #-
			ifTrue: [ html deleted: [ self renderText: object spaces: (sourceSpaces at: index) on: html ] ]
			ifFalse: [ 
				operation = #+
					ifTrue: [ html inserted: [ self renderText: object spaces: (targetSpaces at: index) on: html ] ]
					ifFalse: [ self renderText: object spaces: (targetSpaces at: index) on: html ] ] ]