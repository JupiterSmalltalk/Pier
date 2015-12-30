accessing
items
	| commands |
	commands := self context commands.
	^ self commandClasses select: [ :each | commands includes: each ]