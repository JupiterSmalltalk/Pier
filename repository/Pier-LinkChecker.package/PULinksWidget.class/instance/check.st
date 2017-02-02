actions
check
	"Checks the currently displayed links."
	
	| changes change |
	changes := OrderedCollection new.
	self report cache do: [ :link |
		change := PULinkChange on: link.
		change isValid
			ifFalse: [ changes add: change repair ] ].
	self 
		show: (PULinkChangesView on: changes)
		onAnswer: [ :answer | self refresh ]