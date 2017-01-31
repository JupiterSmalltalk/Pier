accessing-dynamic
allPostsIn: aContext
	"Answer all the published posts in choronological order."

	^ ((aContext enumeratorFor: self)
		select: [ :each |
			each isPost
				and: [ each publication notNil
				and: [ each publication <= GRPlatform current magritteTimeStampClass now ] ] ])
		sort: [ :a :b | a publication < b publication ];
		yourself