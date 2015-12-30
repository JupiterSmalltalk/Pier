rendering
renderSelect: aCollection on: html
	html form: [
		html select
			list: aCollection;
			beSubmitOnChange;
			selected: self selected;
			labels: [ :each | self labelFor: each ];
			callback: [ :each | self context: (self context structure: each) ] ]