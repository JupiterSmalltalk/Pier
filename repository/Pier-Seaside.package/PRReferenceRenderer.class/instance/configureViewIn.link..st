private
configureViewIn: aContext link: aLink
	aContext command isView
		ifFalse: [ ^ self ].
	aContext command viewComponent magritteDescription do: [ :description |
		aLink
			parameterAt: description parameterName
			ifPresent: [ :value | aContext command viewComponent write: (description fromString: value) using: description ] ]