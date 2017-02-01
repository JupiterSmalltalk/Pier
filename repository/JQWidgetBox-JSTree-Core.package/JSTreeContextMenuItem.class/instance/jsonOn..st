json
jsonOn: aStream
	aStream
		json: self label asLowercase;
		nextPut: $:;
		nextPut: ${;
		json: 'label';
		nextPut: $:;
		json: self label.
		
	self submenu isEmpty not ifTrue: [
		self submenu renderContext: self renderContext.
		aStream
			nextPut: $,;
			json: 'submenu';
			nextPut: $:;
			json: self submenu ].
			
	aStream
			nextPut: $,;
			json: 'separator_before';
			nextPut: $:;
			json: self separatorBefore; 
			nextPut: $,;
			json: 'separator_after';
			nextPut: $:;
			json: self separatorAfter;
			nextPut: $,;
			json: 'disabled';
			nextPut: $:;
			json: self disabled.
			
	self styleClass notNil ifTrue: [
		aStream
			nextPut: $,;
			json: 'style_class';
			nextPut: $:;
			json: self styleClass ].
		
	self icon notNil ifTrue: [
		aStream
			nextPut: $,;
			json: 'icon';
			nextPut: $:;
			json: self icon ].
		
	self action notNil ifTrue: [
		aStream
			nextPut: $,;
			json: 'action';
			nextPut: $:.
		self action isBlock 
			ifTrue: [
				aStream javascript: 
					((JQueryClass context: self renderContext) ajax script: [ :s |
						self action value: s ]) asFunction ]
			ifFalse: [
				aStream javascript: self action ] ].
	aStream 
		nextPut: $}.