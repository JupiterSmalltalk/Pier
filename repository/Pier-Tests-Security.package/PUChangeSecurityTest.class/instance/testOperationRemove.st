tests-operations
testOperationRemove
	| permissions |
	self command
		with: true; all: true;
		operator: #remove; permissions: self permissions.
	self command execute.
	
	permissions := self permissions.
	(self command accessor read: self structure) do:
		[ :each | self deny: (permissions includes: each) ].
	(self command accessor read: self child)do:
		[ :each | self deny: (permissions includes: each) ]