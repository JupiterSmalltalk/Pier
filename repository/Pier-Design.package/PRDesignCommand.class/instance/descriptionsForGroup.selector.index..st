private
descriptionsForGroup: aString selector: aSelector index: anInteger
	"Now this is truly and utterly ugly. Don't look at it, ok?"
	
	| accessor description |
	accessor := MASelectorAccessor selector: aSelector.
	accessor := anInteger isNil 
		ifTrue: [ PRDocumentAccessor on: accessor ]
		ifFalse: [
			MAChainAccessor
				on: accessor 
				accessor: (MADictionaryAccessor key: anInteger) ].
	description := anInteger isNil 
		ifTrue: [ PRDocumentDescription new ]
		ifFalse: [ MAMemoDescription new cssClass: 'file' ].
	^ Array 
		with: (PRStructureDescription new
			accessor: accessor;
			label: 'Location';
			group: aString;
			beReadonly;
			yourself)
		with: (description
			instVarNamed: 'accessor' put: (MAChainAccessor
				on: accessor
				accessor: (MASelectorAccessor selector: (anInteger isNil
					ifTrue: [ #document ]
					ifFalse: [ #contents ])));
			label: 'Contents';
			group: aString;
			yourself)