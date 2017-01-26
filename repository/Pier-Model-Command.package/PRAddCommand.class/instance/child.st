private
child
	"Create a new structure of the selected species, a subclass of PRStructure. Set the title if necessary, else it will be generated automatically."

	| child |
	child := self type named: self name.
	(self title notNil and: [ self title notEmpty ])
		ifTrue: [ child title: self title ].
	^ child