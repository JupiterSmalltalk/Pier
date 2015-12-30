private
split: aString do: aBlock
	"Split aString on all separators and pass in two collections inta aBlock, the first one being the split strings and the second one being the splitter strings inbetween."
	
	| strings splitters input output |
	strings := OrderedCollection new.
	splitters := OrderedCollection new.
	input := (aString ifNil: [ String new ])
		trimBoth readStream.
	[ input atEnd ] whileFalse: [
		output := WriteStream on: String new.
		[ input atEnd or: [ input peek isSeparator ] ]
			whileFalse: [ output nextPut: input next ].
		output isEmpty
			ifFalse: [ strings addLast: output contents ].
		output := WriteStream on: String new.
		[ input atEnd or: [ input peek isSeparator not ] ]
			whileFalse: [ output nextPut: input next ].
		output isEmpty
			ifFalse: [ splitters addLast: output contents ] ].
	splitters addLast: (String with: Character cr).
	^ aBlock value: strings asArray value: splitters asArray