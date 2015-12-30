rendering
renderFilterOn: html
	html form class: 'magritte'; with: [
		html table: [ 
			html tableRow: [
				html tableHeading
					title: 'Separate different terms by spaces. To exclude terms prefix with a minus.';
					with: 'Search Query:'.
				html tableData: [
					html textInput
						value: query;
						callback: [ :value | self query: value ].
					html space; submitButton: 'Filter' ] ] ] ]