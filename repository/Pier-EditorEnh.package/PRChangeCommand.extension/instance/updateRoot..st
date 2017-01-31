*pier-editorenh
updateRoot: aHtmlRoot
  | handler url |
  super updateRoot: aHtmlRoot.
  PREditorScripts default updateRoot: aHtmlRoot.
  handler := PREditorHandler on: self context copy sanitize.
  aHtmlRoot application cache
    store:
      (handler
        setParent: aHtmlRoot application;
        yourself).
  aHtmlRoot javascript
    add:
      'EditorEnh.linkOptionUrl='
        , (WACurrentRequestContext value registry urlFor: handler) asJavascript