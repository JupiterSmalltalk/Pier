descriptions
descriptionCommand
	<magritteDescription>
	^ MAStringDescription new
		chainAccessor: #(#command #label);
		label: 'Command';
		priority: 200;
		beReadonly;
		yourself