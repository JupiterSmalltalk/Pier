rendering
renderSelectorOn: html
	html form: [
		html table: [
			html tableRow: [
				html tableHeading: 'Source'.
				html tableHeading: 'Target'.
				html tableHeading ].
			html tableRow: [
				html tableData: [
					html select
						list: self contexts;
						selected: self sourceContext;
						labels: [ :value | self labelFor: value ];
						callback: [ :value | sourceContext := value ] ].
				html tableData: [
					html select
						list: self contexts;
						selected: self targetContext;
						labels: [ :value | self labelFor: value ];
						callback: [ :value | targetContext := value ] ].
				html tableData: [
					html submitButton: 'update' ] ] ] ]