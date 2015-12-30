events
doExecute
	| enumerator |
	super doExecute.
	enumerator := self structure enumerator.
	self with ifTrue: [ enumerator with ].
	self all ifTrue: [ enumerator all ].
	enumerator do: [ :each |
		(self all or: [ self structure = each ])
			ifTrue: [ self doExecuteFor: each ] ]