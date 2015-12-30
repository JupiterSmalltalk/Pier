tests-enumerator
testEnumeratorDoSeparatedBy
	| result |
	result := String new.
	self root enumerator everything
		do: [ :each | result := result , each name ]
		separatedBy: [ result := result , ', ' ].
	self assert: result = 'root, folder, child, structure'