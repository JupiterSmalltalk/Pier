testing
isFiltered: aStructure
	"Test if aStructure should be filtered from the widget:
	
	(1) Do not display if it is hidden from the menus.
	(2) Do not display if itself or one of the parents has an invalid view.
	(3) Do not display if it is one of the filtered classes."

	aStructure hideFromMenus
		ifTrue: [ ^ true ].
	aStructure parents do: [ :parent |
		(self context structure: parent) isValid
			ifFalse: [ ^ true ] ].
	^ self filter 
		anySatisfy: [ :each | aStructure class = each ]