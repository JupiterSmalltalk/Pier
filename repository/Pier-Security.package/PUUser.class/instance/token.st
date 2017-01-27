accessing-readonly
token
	"Answer a token used for cookie authentication."

	^ token ifNil: [ self newToken ]