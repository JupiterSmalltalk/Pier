actions
execute: aCommand
	self mutex critical: [
		self apply: aCommand.
		aCommand isLogged 
			ifTrue: [ self add: aCommand context ] ]