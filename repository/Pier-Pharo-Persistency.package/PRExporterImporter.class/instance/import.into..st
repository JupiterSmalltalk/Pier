actions
import: aCollection into: aKernel
	| kernel stream |
	aCollection isNil
		ifTrue: [ ^ owner inform: 'Please specify an import.' ].
	[ stream := self readStreamOn: aCollection.
	kernel := stream next ]
		on: Error
		do: [ :err | ^ owner inform: 'Unable to import: ' , err messageText printString , '.' ].
	(kernel isKindOf: PRKernel)
		ifFalse: [ ^ owner inform: 'Invalid file format.' ].
	self replace
		ifTrue: [ 
			aKernel becomeForward: kernel.
			aKernel persistency desanitize ]
		ifFalse: [
			kernel root name: (PRAddCommand new
				uniqueName: kernel root name
				in: aKernel root).
			aKernel root addChild: kernel root ].
	self sanitizeImport: kernel root.
	^ kernel
