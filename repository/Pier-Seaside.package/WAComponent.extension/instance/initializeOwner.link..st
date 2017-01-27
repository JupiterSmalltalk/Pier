*pier-seaside-initialization
initializeOwner: aStructure link: anInternalLink
	"Initialize the receiver with the settings from aStructure and overriding parameters of anInternalLink."

	aStructure 
		initializeVisualComponentSettings: self 
		link: anInternalLink