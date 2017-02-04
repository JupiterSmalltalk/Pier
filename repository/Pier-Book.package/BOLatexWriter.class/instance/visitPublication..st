visiting-structure
visitPublication: aStructure
	aStructure isIgnoredBody
		ifFalse: [ self visit: aStructure document ].
	aStructure enumerator do: [ :structure |
		structure isPublication
			ifTrue: [ self visit: structure ] ]