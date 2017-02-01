components
uploadComponent
	^ uploadComponent ifNil: [ uploadComponent := NAFileUpload new ]