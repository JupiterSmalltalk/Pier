*pier-jquery
jqTabsIn: aContext
	<value: 'jq-tabs' comment: 'Display children of the current structure as a tabbed widget.'>
	
	^ self lookupStructure: aContext structure do: [ :structure | [ :html |
		html div
			script: (html jQuery new tabs
				selected: (self propertyAt: 'selected' ifAbsent: [ 0 ]);
				yourself);
			with: [
				html unorderedList: [
					(aContext enumeratorFor: structure) do: [ :child |
						html listItem: [
							html anchor
								url: (html jQuery ajax
									html: [ :renderer | 
										html rendererInstance 
											renderer: renderer;
											visit: child ];
									fullUrl);
								with: child menu ] ] ] ] ] ]