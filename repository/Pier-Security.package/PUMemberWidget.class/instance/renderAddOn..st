rendering
renderAddOn: html
	self isSuperuser
		ifFalse: [ ^ self ].
	html break.
	html form: [
		html textInput
			callback: [ :value | self add: value ].
		html submitButton
			text: 'add' ]