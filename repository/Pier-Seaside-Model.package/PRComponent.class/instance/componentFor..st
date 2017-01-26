accessing-dynamic
componentFor: anInternalLink
	"Answer a new instance of the Seaside component."

	^ self componentClass 
		owner: self link: anInternalLink