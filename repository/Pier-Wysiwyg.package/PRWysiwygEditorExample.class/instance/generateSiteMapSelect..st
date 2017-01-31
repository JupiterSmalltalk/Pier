callback-support
generateSiteMapSelect: id
	| renderedSelectHtml kernel user viewableStructures structurePaths |
	
	"I want to see how the site map appears to a non-admin user, so add myself to the kernel if I'm not already there"
	kernel := PRKernel instances anyOne.
	user :=  kernel userNamed: 'nick.ager@gmail.com' ifNone: [ kernel users add: ((PUUser named: 'nick.ager@gmail.com') password: 'apassword'; yourself) ].
	viewableStructures := kernel root enumerator with; all; select: [ :aStructure | aStructure securityDecoration hasPermission: (PUPermission on: PRViewCommand) for: user].
	
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