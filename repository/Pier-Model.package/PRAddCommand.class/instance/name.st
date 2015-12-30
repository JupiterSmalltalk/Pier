accessing
name
	^ name ifNil: [ name := self uniqueName: self structure defaultChildName in: self structure ]