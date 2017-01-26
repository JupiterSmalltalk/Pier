private
contextForCommandIn: aContext link: aLink
	aLink parameterAt: 'command' ifPresent: [ :name |
		PRCommand withAllConcreteClassesDo: [ :class |
			(class name greaseString = name or: [ class label = name ]) 
				ifTrue: [ ^ aContext command: class new ] ] ].
	^ aContext