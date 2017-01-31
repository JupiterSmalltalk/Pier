rendering
renderTabsOn: html
	html div
		id: self tabId;
		script: (html jQuery this tabs
			onActivate: (self onSelectTabJSOn: html));
		with: [
			html unorderedList: [
				self tabs do: [ :each | | id |
					id := html nextId.
					(each value) at: #id put: id.
					html listItem: [
						html anchor
							url: '#', id;
							with: each key ] ] ].
			self tabs do: [ :each | 
				html div
					id: ((each value) at: #id);
					with: [ ((each value) at: #renderer) value: html ] ] ]