check defaults
selectorsWithCommonDefaults
	^ selectorsWithCommonDefaults ifNil: [ 
		selectorsWithCommonDefaults := Dictionary new
			at: #name put: [ true ];
			at: #title put: [ structure title = structure name capitalized ];
			at: #menu put: [ structure menu = structure title ];
			at: #tags put: [ structure tags isEmpty ];
			at: #hideFromMenus put: [ structure hideFromMenus not ];
			yourself ]