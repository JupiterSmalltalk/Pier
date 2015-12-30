actions
remove: aMember
	aMember users isEmpty ifFalse: [ 
		^ self show: (WAFormDialog new
			addMessage: 'Remove all users before removing a group.';
			yourself) ].
	super remove: aMember