translation
translate: aString
	"For now just translate by cropping the variable prefix, later on do the real thing: http://code.google.com/apis/gadgets/docs/i18n.html."

	| input output token |
	input := aString readStream.
	output := WriteStream on: String new.
	[ input atEnd ] whileFalse: [
		output nextPutAll: (input upToAll: '__MSG_').
		input atEnd ifFalse: [
			token := input upToAll: '__'.
			output nextPutAll: (self translations
				at: token
				ifAbsent: [ token copyReplaceAll: '_' with: ' ' ]) ] ].
	^ output contents