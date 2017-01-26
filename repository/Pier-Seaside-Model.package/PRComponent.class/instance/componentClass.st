accessing
componentClass
	"Answer the component class of the receiver. The default is an empty Seaside component to avoid any troubles."

	^ (self prototypeInstance isNil or: [ self prototypeInstance class isObsolete ])
		ifFalse: [ self prototypeInstance class ]
		ifTrue: [ WAComponent ]