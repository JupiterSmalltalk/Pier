rendering-parts
renderValueLinksOn: html
	html optionGroup label: 'Values'; with: [
		(Pragma allNamed: #value:comment: in: PRValueLink sortedByArgument: 1) do: [ :pragma |
			html option
				title: pragma arguments second;
				value: 'value:' , pragma arguments first;
				with: pragma arguments first ] ]