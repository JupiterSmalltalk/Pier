action
repairExternal
	self status size < 3 ifTrue: [ ^ self ].
	self target reference: self status third second.
	self refresh