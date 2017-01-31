acessing
styles
	| styleElements groupedElements withinConditionalElement |
	styleElements := self headElements 
		select: [ :each | 
			(((each class canUnderstand: #typeOrNil) and: [ each typeOrNil = WAMimeType textCss ])
			or: [ self openingConditionalCommentClasses includes: each class name ])
			or: [ self closingConditionalCommentClasses includes: each class name ] ].
	
	"group conditional comments with styles so that we add the style within any conditional comments"
	groupedElements := 	OrderedCollection new.
	withinConditionalElement := false.
	styleElements do: [ :each |
		(self openingConditionalCommentClasses includes: each class name) 
			ifTrue: [
				withinConditionalElement := true.
				groupedElements add: (OrderedCollection with: each) ]
			ifFalse: [
				withinConditionalElement 
					ifTrue: [
						groupedElements last add: each ]
					ifFalse: [
						groupedElements add: (OrderedCollection with: each) ] ].
		(self closingConditionalCommentClasses includes: each class name) ifTrue: [
				withinConditionalElement := false ] ].

	^ (groupedElements collect: [ :each |
		self renderStyleFor: each ]), ((styles ifNil: [ #() ]) asArray)