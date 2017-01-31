rendering
renderContentOn: html
	self defineElementIds: html.
	html div 
		class: 'yui-skin-sam';
		with: [
			(self configuration allowWikiTextEditing and: [ self configuration allowWikiTextEditing ]) 
				ifTrue: [ self renderTabsOn: html ]
				ifFalse: [
					self configuration allowWikiTextEditing ifTrue: [ self renderWikiEditorOn: html ].
					self configuration allowWysiwygEditing ifTrue: [ self renderWysiwygEditorOn: html ] ] ].
	
	"a javascript hack to ensure that the editor occupies as much space as possible and the width doesn't alter 
	as the views are changed between tabs"		
	html document addLoadScript: 
		((html jQuery: '.yui-skin-sam') parent cssAt: 'width' put: '100%')