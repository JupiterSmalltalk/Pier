rendering
renderEditorInsertImagePopupOn: html
	self editor configuration editorExtraJS:  
'/**
* @method _renderInsertImageWindow
* @description Pre renders the InsertImage window so we get faster window opening.
*/
pierWysiwygEditor._renderInsertImageWindow = function() {
var Dom = YAHOO.util.Dom,
    Event = YAHOO.util.Event,
    Lang = YAHOO.lang;

                var el = this.currentElement[0];
                var str = ''<label for="'' + this.get(''id'') + ''_insertimage_url"><strong>'' + this.STR_IMAGE_URL + '':</strong> <input type="text" id="'' + this.get(''id'') + ''_insertimage_url" value="" size="40"></label>'';
                var body = document.createElement(''div'');
                body.innerHTML = str;

                var tbarCont = document.createElement(''div'');
                tbarCont.id = this.get(''id'') + ''_img_toolbar'';
                body.appendChild(tbarCont);

                var str2 = ''<label for="'' + this.get(''id'') + ''_insertimage_title"><strong>'' + this.STR_IMAGE_TITLE + '':</strong> <input type="text" id="'' + this.get(''id'') + ''_insertimage_title" value="" size="40"></label>'';
                str2 += ''<label for="'' + this.get(''id'') + ''_insertimage_link"><strong>'' + this.STR_LINK_URL + '':</strong> <input type="text" name="'' + this.get(''id'') + ''_insertimage_link" id="'' + this.get(''id'') + ''_insertimage_link" value=""></label>'';
                str2 += ''<label for="'' + this.get(''id'') + ''_insertimage_target"><strong>&nbsp;</strong><input type="checkbox" name="'' + this.get(''id'') + ''_insertimage_target_" id="'' + this.get(''id'') + ''_insertimage_target" value="_blank" class="insertimage_target"> '' + this.STR_LINK_NEW_WINDOW + ''</label>'';
                var div = document.createElement(''div'');
                div.innerHTML = str2;
                body.appendChild(div);

                var o = {};
                Lang.augmentObject(o, this._defaultImageToolbarConfig); //Break the config reference

                var tbar = new YAHOO.widget.Toolbar(tbarCont, o);
                tbar.editor_el = el;
                this._defaultImageToolbar = tbar;
                
                var cont = tbar.get(''cont'');
                var hw = document.createElement(''div'');
                hw.className = ''yui-toolbar-group yui-toolbar-group-height-width height-width'';
                hw.innerHTML = ''<h3>'' + this.STR_IMAGE_SIZE + '':</h3>'';
                hw.innerHTML += ''<span tabIndex="-1"><input type="text" size="3" value="" id="'' + this.get(''id'') + ''_insertimage_width"> x <input type="text" size="3" value="" id="'' + this.get(''id'') + ''_insertimage_height"></span>'';
                cont.insertBefore(hw, cont.firstChild);

                var fileUploader = ', (self renderImageUploaderOn: html), ';
                var fileUploaderDiv = document.createElement(''div'');
                fileUploaderDiv.innerHTML = fileUploader;
                body.insertBefore(fileUploaderDiv, body.firstChild.nextSibling);
		    Event.onAvailable("', self uploadComponent iframeId, '", function () {', self uploadScript, '});

               Event.onAvailable(this.get(''id'') + ''_insertimage_width'', function() {
                    Event.on(this.get(''id'') + ''_insertimage_width'', ''blur'', function() {
                        var value = parseInt(Dom.get(this.get(''id'') + ''_insertimage_width'').value, 10);
                        if (value > 5) {
                           this._defaultImageToolbar.editor_el.style.width = value + ''px'';
                            //Removed moveWindow call so the window doesn''t jump
                            //this.moveWindow();
                        }
                    }, this, true);
                }, this, true);
                Event.onAvailable(this.get(''id'') + ''_insertimage_height'', function() {
                    Event.on(this.get(''id'') + ''_insertimage_height'', ''blur'', function() {
                        var value = parseInt(Dom.get(this.get(''id'') + ''_insertimage_height'').value, 10);
                        if (value > 5) {
                            this._defaultImageToolbar.editor_el.style.height = value + ''px'';
                            //Removed moveWindow call so the window doesn''t jump
                            //this.moveWindow();
                        }
                    }, this, true);
                }, this, true);


                tbar.on(''colorPickerClicked'', function(o) {
                    var size = ''1'', type = ''solid'', color = ''black'', el = this._defaultImageToolbar.editor_el;

                    if (el.style.borderLeftWidth) {
                        size = parseInt(el.style.borderLeftWidth, 10);
                    }
                    if (el.style.borderLeftStyle) {
                        type = el.style.borderLeftStyle;
                    }
                    if (el.style.borderLeftColor) {
                        color = el.style.borderLeftColor;
                    }
                    var borderString = size + ''px '' + type + '' #'' + o.color;
                    el.style.border = borderString;
                }, this, true);

                tbar.on(''buttonClick'', function(o) {
                    var value = o.button.value,
                        el = this._defaultImageToolbar.editor_el,
                        borderString = '''';
                    if (o.button.menucmd) {
                        value = o.button.menucmd;
                    }
                    var size = ''1'', type = ''solid'', color = ''black'';

                    /* All border calcs are done on the left border
                        since our default interface only supports
                        one border size/type and color */
                    if (el.style.borderLeftWidth) {
                        size = parseInt(el.style.borderLeftWidth, 10);
                    }
                    if (el.style.borderLeftStyle) {
                        type = el.style.borderLeftStyle;
                    }
                    if (el.style.borderLeftColor) {
                        color = el.style.borderLeftColor;
                    }
                    switch(value) {
                        case ''bordersize'':
                            if (this.browser.webkit && this._lastImage) {
                                Dom.removeClass(this._lastImage, ''selected'');
                                this._lastImage = null;
                            }

                            borderString = parseInt(o.button.value, 10) + ''px '' + type + '' '' + color;
                            el.style.border = borderString;
                            if (parseInt(o.button.value, 10) > 0) {
                                tbar.enableButton(''bordertype'');
                                tbar.enableButton(''bordercolor'');
                            } else {
                                tbar.disableButton(''bordertype'');
                                tbar.disableButton(''bordercolor'');
                            }
                            break;
                        case ''bordertype'':
                            if (this.browser.webkit && this._lastImage) {
                                Dom.removeClass(this._lastImage, ''selected'');
                                this._lastImage = null;
                            }
                            borderString = size + ''px '' + o.button.value + '' '' + color;
                            el.style.border = borderString;
                            break;
                        case ''right'':
                        case ''left'':
                            tbar.deselectAllButtons();
                            el.style.display = '''';
                            el.align = o.button.value;
                            break;
                        case ''inline'':
                            tbar.deselectAllButtons();
                            el.style.display = '''';
                            el.align = '''';
                            break;
                        case ''block'':
                            tbar.deselectAllButtons();
                            el.style.display = ''block'';
                            el.align = ''center'';
                            break;
                        case ''padding'':
                            var _button = tbar.getButtonById(o.button.id);
                            el.style.margin = _button.get(''label'') + ''px'';
                            break;
                    }
                    tbar.selectButton(o.button.value);
                    if (value !== ''padding'') {
                        this.moveWindow();
                    }
                }, this, true);



                if (this.get(''localFileWarning'')) {
                    Event.on(this.get(''id'') + ''_insertimage_link'', ''blur'', function() {
                        var url = Dom.get(this.get(''id'') + ''_insertimage_link'');
                        if (this._isLocalFile(url.value)) {
                            //Local File throw Warning
                            Dom.addClass(url, ''warning'');
                            YAHOO.log(''Local file reference found, show local warning'', ''warn'', ''Editor'');
                            this.get(''panel'').setFooter(this.STR_LOCAL_FILE_WARNING);
                        } else {
                            Dom.removeClass(url, ''warning'');
                            this.get(''panel'').setFooter('' '');
                            //Adobe AIR Code
                            if ((this.browser.webkit && !this.browser.webkit3 || this.browser.air) || this.browser.opera) {                
                                this.get(''panel'').setFooter(this.STR_IMAGE_COPY);
                            }
                        }
                    }, this, true);
                }

                Event.on(this.get(''id'') + ''_insertimage_url'', ''blur'', function() {
                    var url = Dom.get(this.get(''id'') + ''_insertimage_url''),
                        el = this.currentElement[0];

                    if (url.value && el) {
                        if (url.value == el.getAttribute(''src'', 2)) {
                            YAHOO.log(''Images are the same, bail on blur handler'', ''info'', ''Editor'');
                            return false;
                        }
                    }
                    YAHOO.log(''Images are different, process blur handler'', ''info'', ''Editor'');
                    if (this._isLocalFile(url.value)) {
                        //Local File throw Warning
                        Dom.addClass(url, ''warning'');
                        YAHOO.log(''Local file reference found, show local warning'', ''warn'', ''Editor'');
                        this.get(''panel'').setFooter(this.STR_LOCAL_FILE_WARNING);
                    } else if (this.currentElement[0]) {
                        Dom.removeClass(url, ''warning'');
                        this.get(''panel'').setFooter('' '');
                        //Adobe AIR Code
                        if ((this.browser.webkit && !this.browser.webkit3 || this.browser.air) || this.browser.opera) {                
                            this.get(''panel'').setFooter(this.STR_IMAGE_COPY);
                        }
                        
                        if (url && url.value && (url.value != this.STR_IMAGE_HERE)) {
                            this.currentElement[0].setAttribute(''src'', url.value);
                            var self = this,
                                img = new Image();

                            img.onerror = function() {
                                url.value = self.STR_IMAGE_HERE;
                                img.setAttribute(''src'', self.get(''blankimage''));
                                self.currentElement[0].setAttribute(''src'', self.get(''blankimage''));
                                YAHOO.util.Dom.get(self.get(''id'') + ''_insertimage_height'').value = img.height;
                                YAHOO.util.Dom.get(self.get(''id'') + ''_insertimage_width'').value = img.width;
                            };
                            var id = this.get(''id'');
                            window.setTimeout(function() {
                                YAHOO.util.Dom.get(id + ''_insertimage_height'').value = img.height;
                                YAHOO.util.Dom.get(id + ''_insertimage_width'').value = img.width;
                                if (self.currentElement && self.currentElement[0]) {
                                    if (!self.currentElement[0]._height) {
                                        self.currentElement[0]._height = img.height;
                                    }
                                    if (!self.currentElement[0]._width) {
                                        self.currentElement[0]._width = img.width;
                                    }
                                }
                                //Removed moveWindow call so the window doesn''t jump
                                //self.moveWindow();
                            }, 800); //Bumped the timeout up to account for larger images..

                            if (url.value != this.STR_IMAGE_HERE) {
                                img.src = url.value;
                            }
                        }
                    }
                    }, this, true);



                this._windows.insertimage = {};
                this._windows.insertimage.body = body;
                //body.style.display = ''none'';
                this.get(''panel'').editor_form.appendChild(body);
                this.fireEvent(''windowInsertImageRender'', { type: ''windowInsertImageRender'', panel: this.get(''panel''), body: body, toolbar: tbar });
                return body;
        }'