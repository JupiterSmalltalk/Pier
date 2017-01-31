private
generateSiteMapSelect: id
	| theContext user viewableStructures structurePaths renderedSelectHtml |

	theContext := self context.
	user :=  theContext user.
	viewableStructures := theContext kernel root enumerator with; all; select: [ :aStructure | aStructure securityDecoration hasPermission: (PUPermission on: PRViewCommand) for: user].
	
	structurePaths := viewableStructures collect: [ :aStructure | aStructure absolutePath].
	structurePaths := (Array with:  'OR select a location Url from site-map ...') , structurePaths.
	
	renderedSelectHtml := WAHtmlCanvas builder	
		render: [:html | 
			html select
				style: 'width: 260px';
				id: id;
				list: structurePaths ].

	renderedSelectHtml replaceAll: $" with: $'.	"subsitute double quotes for single quotes"

	^ renderedSelectHtml