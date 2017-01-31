writing
closeTag: aString
	aString = 'script'
		ifTrue: [
			self bodyScripts add: currentStream contents.
			currentStream := stream ]
		ifFalse: [
			super closeTag: aString	]