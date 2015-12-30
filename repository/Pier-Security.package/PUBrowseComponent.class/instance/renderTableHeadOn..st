rendering
renderTableHeadOn: html
	html tableRow: [
		html tableHeading: 'name'.
		html tableHeading: 'type'.
		html tableHeading: 'owner mode'.
		html tableHeading: 'group mode'.
		html tableHeading: 'other mode'.
		html tableHeading: 'owner'.
		html tableHeading: 'group' ]