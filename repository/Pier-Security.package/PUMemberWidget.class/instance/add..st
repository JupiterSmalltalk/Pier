actions
add: aString
	aString isEmptyOrNil
		ifTrue: [ ^ self ].
	self members do: [ :each |
		each name = aString ifTrue: [ 
			self show: (WAFormDialog new
				addMessage: 'A member with the name ' , aString printString , ' already exists.';
				yourself) ] ].
	self
		edit: (self memberClass named: aString) title: 'Add'
		do: [ :member | 
			self members add: member.
			self refresh	]