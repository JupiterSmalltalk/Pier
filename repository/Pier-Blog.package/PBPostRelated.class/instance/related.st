accessing
related
	^ related ifNil: [ related := self findRelated ]