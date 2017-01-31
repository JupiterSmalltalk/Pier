rendering
editorJs 
	"see: 
		* http://developer.yahoo.com/yui/editor/
		* http://developer.yahoo.com/yui/examples/editor/toolbar_editor.html
		* http://developer.yahoo.com/yui/docs/editor.js.html

		* http://developer.yahoo.com/yui/examples/editor/cal_editor.html
		* http://developer.yahoo.com/yui/examples/editor/flickr_editor.html"
	 
^ 'pierWysiwygEditor = new YAHOO.widget.Editor("', self textId, '", {
	height: "300px",
	width: "', self editorWidth, '",
	autoHeight: true,
	allowNoEdit: true,
	extracss: ".pierNonEditable { border: 1px dashed; display:inline-block;} .broken {color: #8A1F11;}', self configuration editorCss, '",
	toolbar: {
		focusAtStart: true,
		buttons: [ 
	    		{ group: "parastyle", label: "",
				buttons: [
					{ type: "select", label: "Normal", value: "heading", disabled: true,
						menu: [
							{ text: "Normal", value: "none", checked: true },
							{ text: "Header 1", value: "h1" },
							{ text: "Header 2", value: "h2" },
							{ text: "Header 3", value: "h3" },
							{ text: "Header 4", value: "h4" },
							{ text: "Header 5", value: "h5" },
							{ text: "Header 6", value: "h6" }
						]
					}
				]
			},
			{ type: "separator" },
			{ group: "indentlist", label: "",
			    buttons: [
			        { type: "push", label: "Create an Unordered List", value: "insertunorderedlist" },
			        { type: "push", label: "Create an Ordered List", value: "insertorderedlist" }
			    ]
			},
			{ type: "separator" },
			{ group: "textstyle" , label: "",
				buttons: [
            			{ type: "push", label: "Bold CTRL + SHIFT + B",  value: "bold" }, 
					{ type: "push", label: "Italic CTRL + SHIFT + I", value: "italic" }, 
					{ type: "push", label: "Underline CTRL + SHIFT + U", value: "underline" },
					{ type: "push", label: "Code", value: "code" },
					{ type: "push", label: "Strikeout", value: "strike" },
					{ type: "separator" },
					{ type: "push", label: "Subscript", value: "subscript", disabled: true },
					{ type: "push", label: "Superscript", value: "superscript", disabled: true },
				 ]
			 },
	    		{ type: "separator" },
			{ group: "insertitem", label: "",
			    buttons: [
				{ type: "push", label: "Horizontal Rule", value: "rule" },
			        { type: "push", label: "HTML Link CTRL + SHIFT + L", value: "createlink", disabled: true },
			        { type: "push", label: "Insert Image", value: "insertimage" }
			    ]
			}
		]
	}
} );

pierWysiwygEditor._renderCreateLinkWindow = function() {
var Dom = YAHOO.util.Dom,
    Event = YAHOO.util.Event,
    Lang = YAHOO.lang;

	var str = "<label for=''" + this.get("id") + "_createlink_url''><strong>" + this.STR_LINK_URL + ":</strong> <input type=''text'' name=''" + this.get("id") + "_createlink_url'' id=''" + this.get("id") + "_createlink_url'' value=''''></label>";
	str += ', self siteMapSelectHtml, ';
	str += "<label for=''" + this.get("id") + "_createlink_target''><strong>&nbsp;</strong><input type=''checkbox'' name=''" + this.get("id") + "_createlink_target'' id=''" + this.get("id") + "_createlink_target'' value=''_blank'' class=''createlink_target''> " + this.STR_LINK_NEW_WINDOW + "</label>";
	str += "<label for=''" + this.get("id") + "_createlink_title''><strong>" + this.STR_LINK_TITLE + ":</strong> <input type=''text'' name=''" + this.get("id") + "_createlink_title'' id=''" + this.get("id") + "_createlink_title'' value=''''></label>";

	var body = document.createElement("div");
	body.innerHTML = str;

	var unlinkCont = document.createElement("div");
	unlinkCont.className = "removeLink";
	var unlink = document.createElement("a");
	unlink.href = "#";
	unlink.innerHTML = this.STR_LINK_PROP_REMOVE;
	unlink.title = this.STR_LINK_PROP_REMOVE;
	Event.on(unlink, "click", function(ev) {
		Event.stopEvent(ev);
		this.unsubscribeAll("afterExecCommand");
		this.execCommand("unlink");
		this.closeWindow();
	}, this, true);
	unlinkCont.appendChild(unlink);
	body.appendChild(unlinkCont);

	this._windows.createlink = {};
	this._windows.createlink.body = body;
	//body.style.display = "none";
	Event.on(body, "keyup", function(e) {
		Event.stopPropagation(e);
	});
	this.get("panel").editor_form.appendChild(body);
	this.fireEvent("windowCreateLinkRender", { type: "windowCreateLinkRender", panel: this.get("panel"), body: body });
	
	$("#', self selectId, '").bind("change", function() {
		$("#', self textId, '_createlink_url").val($(this).val());
	});	
	return body;
}

pierWysiwygEditor.cmd_code = function (o) {
	this.execCommand("inserthtml", "<code>" + this._getSelection() + "</code>");
}
pierWysiwygEditor.cmd_rule = function (o) {
	this.execCommand("inserthtml", "<hr>");
}
pierWysiwygEditor.cmd_strike = function (o) {
	this.execCommand("inserthtml", "<del>" + this._getSelection() + "</del>");
} ', 
self configuration editorExtraJS, 
'

pierWysiwygEditor.render();',
"below is needed when the Wywsiwyg editor is loaded via Ajax"
'YAHOO.util.Event._load();'

"	
{ group: ''formatting'' , label: ''Formatting'',
  buttons: [
	{ type: ''separator'' },
	{ type: ''push'', label: ''Remove Formatting'', value: ''removeformat'', disabled: true },
	{ type: ''push'', label: ''Show/Hide Hidden Elements'', value: ''hiddenelements'' }
   ]
}
"