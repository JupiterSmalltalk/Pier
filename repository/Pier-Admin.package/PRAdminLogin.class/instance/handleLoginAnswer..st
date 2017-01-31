private
handleLoginAnswer: loginCommand
	loginCommand isNil
		ifTrue: [ ^ self ].
	loginCommand successAnswer: loginCommand.
	[ 
	loginCommand doValidate.
	loginCommand doAnswer ]
		on: MAError
		do: [ :error | self loginComponent errors add: error ].
	self loginComponent errors isEmpty
		ifFalse: [ ^ self ].
	self pierComponent setLoggedInUser: loginCommand user.
	self show: (PRAdminUI pierComponent: self pierComponent)