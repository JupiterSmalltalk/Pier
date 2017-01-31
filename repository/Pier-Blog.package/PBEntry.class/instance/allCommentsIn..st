accessing-dynamic
allCommentsIn: aContext
	"Answer all the published comments in choronological order."

	^ ((aContext enumeratorFor: self) all
		select: [ :each |
			each isComment
				and: [ each publication notNil
				and: [ each publication <= GRPlatform current magritteTimeStampClass now ] ] ])
		sort: [ :a :b | a publication < b publication ];
		yourself