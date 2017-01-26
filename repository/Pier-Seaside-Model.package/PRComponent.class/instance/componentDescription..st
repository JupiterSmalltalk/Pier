accessing-description
componentDescription: component
	"Answer the description of the component."
	| description |
	description := component magritteDescription.
	description := description collect: [ :each | each copy ].
	description do: [ :each |
		each group isNil
			ifTrue: [ each group: 'Component' ] ].
	^ description