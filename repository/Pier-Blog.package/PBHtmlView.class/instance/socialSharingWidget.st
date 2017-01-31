accessing
socialSharingWidget
	^ socialSharingWidget ifNil: [
		self blog socialSharingWidgetClassName notNil 
			ifTrue: [ socialSharingWidget :=  (GRPlatform current magritteClassNamed: self blog socialSharingWidgetClassName) new ]
			ifFalse: [ nil ] ]