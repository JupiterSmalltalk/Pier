accessing
moveBlock: aMoveBlock

	| eventString |
	eventString := 'move_node.jstree'.
	self events at: eventString put: aMoveBlock.
	self
		call: 'bind'
		with: eventString
		with: (((JQueryClass context: self renderContext) script: 
					[:s |
					s << ((s alias: 'data.rslt.o') call: 'each'
								with: ((((JQueryClass context: self renderContext) ajax)
										type: 'POST';
										addParameter: 'event' -> eventString;
										addParameters: self moveEventParameters;
										callback: [ self callbackResponse]) asFunction: #(i)))])
				asFunction: #(#e #data))