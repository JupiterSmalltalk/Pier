private
configureCommandIn: aContext link: aLink
	aContext command magritteDescription do: [ :description |
		aLink
			parameterAt: description parameterName
			ifPresent: [ :value | aContext command write: (description fromString: value) using: description ] ]