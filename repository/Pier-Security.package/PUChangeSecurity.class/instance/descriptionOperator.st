accessing-description
descriptionOperator
	<magritteDescription>
	^ MASingleOptionDescription new
		comment:
				'Defines if the permissions should remain unchanged, be set to the selected ones, or be added/removed from the current selection.';
		reference: MASymbolDescription new;
		options: self class defaultOperators;
		default: self class defaultOperator;
		parameterName: 'operator';
		undefined: '(unchanged)';
		accessor: #operator;
		label: 'Operator';
		priority: 300;
		yourself