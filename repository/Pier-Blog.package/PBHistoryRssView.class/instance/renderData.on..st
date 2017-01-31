rendering-parts
renderData: aContext on: html
	| data | 
	html definitionList: [
		aContext command magritteDescription do: [ :each |
			html definitionTerm: each label.
			html definitionData: [
				data := aContext command readUsing: each.
				each isDocumentDescription
					ifFalse: [ html render: (each toString: data) ]
					ifTrue: [
						PBRssRenderer new
							start: data in: self 
							on: html ] ] ] ]