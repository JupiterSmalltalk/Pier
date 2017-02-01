testing
isVisible

	" do not show if no ID is given "
	(self uacct isNil or: [ self uacct isEmpty ])
		ifTrue: [ ^ false ].

	" do not show if this is something else than a view "
	(self onlyViews and: [ self context command isView not ])
		ifTrue: [ ^ false ].

	" do not show if this user is logged in "
	(self onlyAnonymous and: [ (self context respondsTo: #isLoggedIn) and: [ self context isLoggedIn ] ])
		ifTrue: [ ^ false ].

	^ true