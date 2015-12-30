actions
execute: aCommand
	"Execute aCommand using the persistency of the receiver. Subclasses might override this method, e.g. to create a transitional logic or to commit changes after execution. Make sure that you always perform the method ==#apply:== when overriding this code."

	self mutex critical: [ self apply: aCommand ]