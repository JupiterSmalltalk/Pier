accessing
component
	^ component ifNil: [ component := self buildComponent: self context ]