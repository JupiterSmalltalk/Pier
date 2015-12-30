private
contextForViewIn: aContext link: aLink
	aLink parameterAt: 'view' ifPresent: [ :name |
		PRViewComponent withAllConcreteClassesDo: [ :class |
			(class name greaseString = name or: [ class label = name ]) 
				ifTrue: [ ^ aContext view: class ] ] ].
	^ aContext