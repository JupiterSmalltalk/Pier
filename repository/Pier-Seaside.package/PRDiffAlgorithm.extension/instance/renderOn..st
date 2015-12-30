*pier-seaside-rendering
renderOn: html
	"Display a change list on the html canvas."

	self patchsetDo: [ :operation :object :index |
		operation = #+
			ifTrue: [ html inserted: object ]
			ifFalse: [
				operation = #-
					ifTrue: [ html deleted: object ]
					ifFalse: [ html render: object ] ].
		html break ]