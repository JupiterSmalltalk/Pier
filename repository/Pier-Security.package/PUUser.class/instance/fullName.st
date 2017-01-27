accessing-readonly
fullName
	"Answer a human readable name of the user."
	
	| full |
	full := String new.
	self firstName notNil
		ifTrue: [ full := full , self firstName , ' ' ].
	self lastName notNil
		ifTrue: [ full := full , self lastName ].
	^ full isEmpty
		ifTrue: [ self name ]
		ifFalse: [ full ]