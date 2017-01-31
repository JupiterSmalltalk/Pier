accessing
editorCss
	^ editorCss ifNil: [editorCss := 'p.important, p.todo, p.note, p.advanced, pre {padding:0.8em; margin-bottom: 1em; border-radius:5px; background:#ebebeb;} .p.important {background:#e8e0ef;} p.todo {color:red} p.note {color: blue} pre {background: #eee}']