rendering
renderContentOn: html
	self isSuperuser
		ifFalse: [ ^ html paragraph: 'Only adminstrators can edit the persistency settings.' ].
	html form: [
		html select
			labels: [ :each | each label ];
			selected: self kernel persistency class;
			list: PRPersistency withAllConcreteClasses;
			callback: [ :each | self activate: each ].
		html space.
		html submitButton
			with: 'select'.
		5 timesRepeat: [ html space ].
		html submitButton
			callback: [ self edit: self kernel persistency ];
			disabled: self kernel persistency magritteDescription isEmpty;
			with: 'edit'.
		(self kernel persistency respondsTo: #snapshot) ifTrue: [
			html space.
			html submitButton
				callback: [ self kernel persistency snapshot ];
				text: 'snapshot' ] ].
	html paragraph: self kernel persistency class comment