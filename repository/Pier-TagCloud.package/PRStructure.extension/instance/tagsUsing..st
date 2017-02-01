*pier-tagcloud
tagsUsing: aCollection
	"Answer a list of tags using the given aCollection of descriptions."
	
	^ aCollection
		inject: OrderedCollection new
		into: [ :collection :each |
			collection addAll: ((each toString: (self readUsing: each))
				findTokens: ' ').
			collection ]