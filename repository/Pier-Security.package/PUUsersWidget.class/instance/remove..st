actions
remove: aMember
	self context user = aMember ifTrue: [ 
		^ self show: (WAFormDialog new
			addMessage: 'You cannot remove yourself.';
			yourself) ].
	self remove: aMember do: [ :member | member groups: #() ]