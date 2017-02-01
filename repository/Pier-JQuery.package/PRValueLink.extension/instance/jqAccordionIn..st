*pier-jquery
jqAccordionIn: aContext
	<value: 'jq-accordion' comment: 'Display children of the current structure as an accordion.'>
	
	^ self lookupStructure: aContext structure do: [ :structure | [ :html |
		html div
			script: (html jQuery new accordion);
			with: [
				(aContext enumeratorFor: structure) do: [ :child |
					html div: child menu.
					html div: [
						html rendererInstance 
							visit: child ] ] ] ] ]