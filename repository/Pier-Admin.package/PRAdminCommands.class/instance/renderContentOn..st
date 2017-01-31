rendering
renderContentOn: html
	html div
		id: #commands;
		with: [ 
			html form: [
				| selectId |
				html label
         				for: (selectId := html nextId);
         				with: [
						html div: 'Global commands: ' ].
			
				html select
					id: selectId;
					list: self application pierAdminCommands;
					labels: [ :class | class label ];
					selected: PRSettingsCommand;
					callback: [ :class | 
						self context: (self context command: class new) ].
					
				html button
					bePush
					onClick: (html jQuery ajax serialize: (html jQuery id: selectId); script: [ :s | self announceAjaxUpdate: s ]);
					with: 'Do' ] ]