accessing-description
magritteDescription
	^ (MAContainer withAll: super magritteDescription) 
		addAll: self componentDescription;
		yourself