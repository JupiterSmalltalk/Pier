accessing
items
	| views |
	views := self context views.
	^ self viewClasses select: [ :each | views includes: each ]