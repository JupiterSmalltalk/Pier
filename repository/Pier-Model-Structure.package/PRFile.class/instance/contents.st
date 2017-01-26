accessing-convenience
contents
	"Answer a string representation of the file of the receiver. Directly access the file-model if you need the unconverted data source. Note that this intentionally uses #asString and not #greaseString that returns an printString of the byte-array."

	^ self file contents asString