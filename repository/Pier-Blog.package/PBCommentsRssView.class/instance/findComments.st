private
findComments
	| items |
	items := self blog allCommentsIn: self context.
	tags isEmpty ifFalse: [
		items := items select: [ :comm | 
			| post |
			post := comm findAncestor: [ :each | each isKindOf: PBPost ].
			post notNil and: [ post tags anySatisfy: [ :each | tags includes: each ] ] ] ].
	items := items last: (self blog itemCount min: items size).
	^ items reversed