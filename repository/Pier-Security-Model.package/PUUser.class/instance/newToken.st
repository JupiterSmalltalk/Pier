tokens
newToken
	"Creates a new token for cookie authentication."

	^ token := (WAKeyGenerator current keyOfLength: 64) printString