private
call: anUrl class: aClass
	| response result |
	[response := HTTPSocket
		httpGet: anUrl
		args: Dictionary new
		user: (email ifNil: [ String new ])
		passwd: (password ifNil: [ String new ]).
	] on: Error do: [^ nil].
	response isString
		ifTrue: [ ^ nil ].
	result := OrderedCollection new.
	(XMLDOMParser parseDocumentFrom: response readStream)
		tagsNamed: aClass xmlName
		do: [ :each | result add: (aClass newFrom: each) ].
	^ result