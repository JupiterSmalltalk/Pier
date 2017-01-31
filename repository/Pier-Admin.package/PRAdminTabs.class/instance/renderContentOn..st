rendering
renderContentOn: html
	html div
		id: #tabs;
		with: [
			html unorderedList
				class: 'tabs';
				with: [
					self application pierAdminViews do: [ :eachView |
						self renderTabForView: eachView on: html ] ] ]