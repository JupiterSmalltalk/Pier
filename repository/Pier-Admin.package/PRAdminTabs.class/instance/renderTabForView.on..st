rendering
renderTabForView: aViewClass on: html
	html listItem
		class: 'tab';
		class: 'active' if: self selectedContextViewClass = aViewClass;
		with: [
			html anchor
				onClick: (html jQuery ajax script: [ :s | 
					self context: (self context view: aViewClass).
					self announceAjaxUpdate: s ]);
				with: [
					html span
						class: 'left';
						with: aViewClass label.
					html span class: 'right' ] ]