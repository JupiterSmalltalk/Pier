accessing
users: aCollection
	(aCollection copyWithoutAll: self users) do: [ :user |
		(user groups includes: self)
			ifFalse: [ user groups add: self ] ].
	(self users copyWithoutAll: aCollection) do: [ :user |
		(user groups includes: self)
			ifTrue: [ user groups remove: self ] ].
	users := aCollection asSet