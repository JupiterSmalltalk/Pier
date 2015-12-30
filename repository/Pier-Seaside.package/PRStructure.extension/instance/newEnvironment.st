*pier-seaside-configuration
newEnvironment
	self localEnvironment: self defaultEnvironment.
	self localStyleSheet: (self localEnvironment 
		childrenDecoration at: 'style.css').
	self childrenDecoration copy children do: [ :each |
		self localEnvironment name = each name
			ifTrue: [ self childrenDecoration remove: each ] ].
	self childrenDecoration add: self localEnvironment.
	^ self localEnvironment