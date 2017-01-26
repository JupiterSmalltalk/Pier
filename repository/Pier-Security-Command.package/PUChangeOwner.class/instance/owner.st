accessing
owner
	^ owner ifNil: [ owner := self structure owner ]