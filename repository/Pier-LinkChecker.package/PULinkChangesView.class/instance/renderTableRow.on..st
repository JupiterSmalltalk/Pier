rendering
renderTableRow: aChange on: html
	html tableData: [
		html anchor
			goto: (self context structure: aChange owner);
			with: aChange owner absolutePath ].
	html tableData: aChange sourceString.
	html tableData: [
		html textInput
			value: aChange targetString;
			style: 'background-color: ' , aChange status second;
			callback: [ :value | aChange targetString: value ] ].
	html tableData: aChange status first.
	html tableData: [ 
		html submitButton
			disabled: aChange isEnabled not;
			callback: [ self apply: aChange ];
			with: 'Apply' ]