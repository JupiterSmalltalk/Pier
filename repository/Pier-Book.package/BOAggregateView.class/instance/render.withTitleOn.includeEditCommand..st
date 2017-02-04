rendering
render: structure withTitleOn: html includeEditCommand: includeEditCommand
	html heading
		level1;
		class: 'capt';
		with: [
			html span: [
				html anchor
					goto: (self context structure: structure);
					with: structure number ].
			
			html anchor
				goto: (self context structure: structure);
				with: structure title.
			
			includeEditCommand ifTrue: [	
				html span
					class: 'aggregatedEdit';
					with: [
						html anchor
							goto: (self context structure: structure command: PREditCommand new);
							with: '[ edit ]' ] ] ].
				
	self render: structure on: html