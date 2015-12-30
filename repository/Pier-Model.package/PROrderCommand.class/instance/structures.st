accessing
structures
	^ structures ifNil: [ structures := self currentStructures ]