accessing
titleFor: aContext
	^ (aContext command label copyUpTo: $() trimBoth , ': ' , aContext structure title