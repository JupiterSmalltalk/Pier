components
section
	^ section ifNil: [ section := (BOPortion named: 'section')
		type: #section;
		contents: 'This is a section.
@@todo this is a todo annotation.

@@note this is a note annotation.
';
		yourself ]