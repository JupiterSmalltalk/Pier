tests-actions
testRemoveLast
	"Tests that the children decoration is properly removed if the last child has been removed from the decoration."

	| child |
	self decoration
		add: (child := self firstChildInstance).
	self decoration
		remove: child.
	self decorated
		decorationOfClass: self actualClass
		ifAbsent: [ ^ self ].
	self assert: false