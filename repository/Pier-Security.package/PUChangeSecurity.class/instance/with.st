accessing-scope
with
	^ with ifNil: [ with := self class defaultWith ]