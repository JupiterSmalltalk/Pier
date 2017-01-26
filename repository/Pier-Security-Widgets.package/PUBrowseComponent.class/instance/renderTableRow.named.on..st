rendering
renderTableRow: aStructure named: aString on: html
	| security |
	security := aStructure securityDecoration.
	html tableRow attributeAt: 'title' put: aStructure title; with: [
		html tableData: [
			html anchor
				callback: [ self structure: aStructure ];
				title: aStructure title;
				with: aString ].
		html tableData: aStructure class label.
		html tableData: [
			self
				renderPermissions: aStructure
				permissions: security ownerPermissions
				on: html ].
		html tableData: [
			self
				renderPermissions: aStructure
				permissions:security groupPermissions
				on: html ].
		html tableData: [
			self
				renderPermissions: aStructure
				permissions: security otherPermissions
				on: html ].
		html tableData: (security owner isNil
			ifFalse: [ security owner name ]).
		html tableData: (security group isNil
			ifFalse: [ security group name ]) ]