*pier-editorenh
updateRoot: aHtmlRoot
  | handler |
  super updateRoot: aHtmlRoot.
  PREditorScripts default updateRoot: aHtmlRoot.
  handler := PREditorHandler on: self context copy sanitize.
  WACurrentRequestContext value registry register: handler.
  aHtmlRoot javascript
    add: 'EditorEnh.linkOptionUrl=' , handler basicUrl asJavascript