visiting-document
visitHeader: anObject 
	self level: anObject level.
	html listItem
		class: 'toc-level-' , anObject level greaseString;
		with: 
			[ html anchor
				url: '#' , anObject hash greaseString;
				with: 
					[ html span
						class: 'toc-number';
						with: 
							[ (counter first: current) do: 
								[ :each | 
								html
									render: each;
									text: '.' ] ].
					html text: ' '.
					html span
						class: 'toc-contents';
						with: 
							[ self 
								enable: true
								while: [ super visitHeader: anObject ] ] ] ]