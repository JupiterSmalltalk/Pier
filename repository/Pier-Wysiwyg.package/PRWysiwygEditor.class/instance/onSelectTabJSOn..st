rendering
onSelectTabJSOn: html
	| baseUrl |
	
	baseUrl := html application url.
	
	^ ((JSStream on: 
'if (ui.index == 0) {
	pierWysiwygEditor.setEditorHTML("<h1>loading...</h1>")'),
	(html jQuery ajax script: [ :s | 
		s << self renderSetEditorHtmlContentJS]; serialize: (html jQuery id: #wikiEditor)),
	(JSStream on: '}	
if (ui.index == 1 && ($("#', self tabId, '").tabs("option", "selected") == 0)) {
	pierWysiwygEditor.setEditorHTML(pierWysiwygEditor.cleanHTML())'),
	((html jQuery id: #wikiEditor) 
		value: (JSStream on: 
			'parseHtmlToPierWikiSyntax(pierWysiwygEditor._getDoc().body, "', 
				baseUrl greaseString, '")')),
	(JSStream on: '}',

"The pier wiki editor toolbar 'EditorEnh' is loaded on window.onload event. If the editor is loaded via Ajax 
the window.onload isn't fired. Test to see if the toolbar is present, if not add it."
'if (ui.index == 1 && ($(''#wikiEditor'').prev().length==0)) {
	new EditorEnh($(''#wikiEditor'')[0], { binding: true, toolbar: true});
}
if (ui.index == 2) {
	if ($("#', self tabId, '").tabs("option", "selected") == 0) {
		$("#wikiEditor").val(parseHtmlToPierWikiSyntax(pierWysiwygEditor._getDoc().body,"',
			baseUrl greaseString, '"))}
	$("#', self textId, '").val($("#wikiEditor").val());'),
	((html jQuery id: self previewId) append: [ :r | 
		r div 
			class: 'ui-widget-overlay';
			with: [
				r div
					style: 'position:absolute; top:40%; left:30%';
					with: [
						r heading
							level1;
							style: 'background:black; color:white; padding:20px;';
							with: 'loading...' ] ] ]),
	(html jQuery ajax script: [ :s |
		s << (s jQuery id: self previewId) 
			replaceWith: [ :r | 
				self renderPreviewOn: r ] ]; 
			serialize: (html jQuery id: #wikiEditor)),
	(JSStream on:
'}')) asFunction: #('event' 'ui')