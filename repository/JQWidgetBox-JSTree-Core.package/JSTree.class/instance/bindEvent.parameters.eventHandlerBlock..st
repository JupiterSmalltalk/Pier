private
bindEvent: eventString parameters: parameters eventHandlerBlock: anEventHandlerBlock

	self events at: eventString put: anEventHandlerBlock.
	self
		call: 'bind'
		with: eventString
		with: (((((JQueryClass context: self renderContext) ajax)
			type: 'POST';
			addParameter: 'event' -> eventString;
			addParameters: parameters;
			onError: ((JQueryClass context: self renderContext)
						script: [:s | s << (JSStream on: '$.jstree.rollback(data.rlbk)')]);
			"onSuccess: ((JQuery.JQueryClass context: self renderContext)
						script: [:s | self renderOnSuccessScriptOn: s forEvent: eventString]);"
			callback: [self callbackResponse]),
			(JSStream on: '$.jstree.rollbackLast=function(){$.jstree.rollback(data.rlbk)}'))
			asFunction: #(e data))