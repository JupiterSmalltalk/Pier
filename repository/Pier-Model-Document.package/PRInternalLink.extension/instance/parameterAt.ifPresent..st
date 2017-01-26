*pier-model-document
parameterAt: aName ifPresent: aBlock
	"2015-Apr-25 - Not sure why this is missing, pier main page does not open without it."
	^ aBlock value: (self parameters at: aName ifAbsent: [ ^ nil ])