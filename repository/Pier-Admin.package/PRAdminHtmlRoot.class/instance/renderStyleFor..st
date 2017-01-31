helpers
renderStyleFor: elements
	| document |	
	document := WAHtmlDocument new.
		
	elements do: [ :each |
		each encodeOn: document ].
	
	^ document stream contents