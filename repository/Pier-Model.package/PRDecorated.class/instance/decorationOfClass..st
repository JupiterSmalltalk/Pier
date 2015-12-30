querying
decorationOfClass: aClass
	"Answer the first decoration of ==aClass==, raise an error if none could be found."

	^ self
		decorationOfClass: aClass
		ifAbsent: [ PRDecorationError signal: 'Decoration not found.' ]