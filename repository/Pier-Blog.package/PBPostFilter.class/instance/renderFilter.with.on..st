rendering
renderFilter: aCollection with: aRenderBlock on: html
	html anchor
		callback: [ self filter: aCollection ];
		with: aRenderBlock.
	self showCount
		ifTrue: [ html text: ' ('; render: aCollection size; text: ')' ]