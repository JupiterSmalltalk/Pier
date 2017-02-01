accessing
createNode: aJQueryNodeRelativeReference position: position node: jsTreeNode jsCreationCallback: jsCreationCallback skipRename: skipRenameBoolean
	"see http://www.jstree.com/documentation/crrm"
	self action: 'create' arguments: (Array with: aJQueryNodeRelativeReference with: position with: jsTreeNode with: jsCreationCallback with: skipRenameBoolean)