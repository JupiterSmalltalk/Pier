actions
execute
	"Execute the command of the receiver. To implement your action in the code of one of my subclasses. Never override this message, but instead have a look at the different template methods (==#doValidate==, ==#doExecute==, ==#doAnswer==) available in the events protocol."
	
	self context command == self 
		ifFalse: [ self error: 'Attempt to execute command outside its context.' ].
	self isView
		ifTrue: [ self error: 'Attempt to execute view.' ].
	self timestamp: GRPlatform current magritteTimeStampClass now.
	self kernel persistency execute: self.
	self doAnswer