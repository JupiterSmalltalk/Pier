private
buildReport
	| component members |
	members := self members asArray.
	component := MAReport
		rows: members
		description: (members first magritteDescription
			select: [ :each | each hasProperty: #report ]).
	component addColumn: (MACommandColumn new
		visible: self isSuperuser;
		addCommandOn: self selector: #edit: text: 'edit';
		addCommandOn: self selector: #remove: text: 'remove';
		yourself).
	^ component