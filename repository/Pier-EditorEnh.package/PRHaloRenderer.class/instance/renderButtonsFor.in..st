public
renderButtonsFor: aStructure in: aContext
	| priority answer context |
	priority := 1.
	answer := aContext view: PRHaloView.
	(Pragma allNamed: #button:class:priority: in: self class sortedByArgument: 3) do: [ :pragma |
		priority = pragma arguments third truncated
			ifFalse: [ html div ].
		priority := pragma arguments third truncated.
		context := self
			perform: pragma selector
			with: (aContext structure: aStructure).
		context isValid ifTrue: [
			context command 
				successAnswer: answer;
				cancelAnswer: answer.
			html anchor
				goto: context;
				attributeAt: 'title' put: pragma arguments first;
				attributeAt: 'class' put: pragma arguments second;
				with: [ html span ] ] ]