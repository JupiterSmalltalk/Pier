*pier-seaside-environment
icon
	"Answer the (inherited) icon structure of the receiver,"

	| icon |
	icon := self localIcon.
	^ (icon notNil and: [icon file notNil])
		ifTrue: [ icon ]
		ifFalse: [
			self isRoot
				ifTrue: [ nil ]
				ifFalse: [ self parent icon ] ]