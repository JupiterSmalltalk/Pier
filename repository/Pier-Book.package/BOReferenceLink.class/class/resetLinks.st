initialization
resetLinks
	| link |
	"This used to be called on #initialize but caused problems on Gemstone
	I think it can probably be removed as it looks like a migration method
	from a previous version"
	PRValueLink allInstances do: [ :each |
		each selector = #bookReference: ifTrue: [ 
			link := self reference: 'ref:' , (each
				parameterAt: 'target'
				ifAbsent: [ '.' ]).
			link owner: each owner.
			each becomeForward: link ] ]