options
checkMoveBlock: aCheckMoveBlock
	checkMoveCallback := aCheckMoveBlock.
	
	self dnd at: 'drop_check' put: (((JQueryClass context: self renderContext) ajax)
				type: 'POST';
				addParameter: 'object.id' -> (JSStream on: 'data.o.attr("id")');
				addParameter:  'object.metadata' -> (JSStream on: 'JSON.stringify(data.o.data("jstree"))');
				addParameter:  'target.id' -> (JSStream on: 'data.r.attr("id")');
				addParameter:  'target.metadata' -> (JSStream on: 'JSON.stringify(data.r.data("jstree"))');			
				onError: ((JQueryClass context: self renderContext)
							script: [:s | s << false]);
				callback: [self checkMoveCallbackResponse];
				asFunction: #(data)).