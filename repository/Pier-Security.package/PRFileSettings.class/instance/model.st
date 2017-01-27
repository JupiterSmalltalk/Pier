accessing
model
	^ model ifNil: [
		model := PRFile new fileModel ]