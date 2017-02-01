accessing
removeBlock: aRemoveBlock
	| eventString |
	eventString := 'before.jstree'.
	self events at: eventString put: aRemoveBlock.
	self
		call: 'bind'
		with: eventString
		with: (((JQueryClass context: self renderContext) script: [:s |					
			s << ((s alias: 'data.inst._get_node(null, true)') call: 'each'
				with: (((JQueryClass context: self renderContext) ajax)
					type: 'POST';
					addParameter: 'event' -> eventString;
					addParameters: self removeEventParameters;
					callback: [self callbackResponse]) asFunction)
				condition: (JSStream on: 'data.func == "remove"')])
			asFunction: #(e data))