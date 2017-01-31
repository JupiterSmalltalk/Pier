components
systemManagementPage
	^ systemManagementPage ifNil: [
		systemManagementPage := 
			(PRPage named: 'management')
				title: 'Management';
				addChild: ((PRComponent named: 'users')
					prototypeInstance: PUUsersWidget new;
					yourself);
				addChild: ((PRComponent named: 'groups')
					prototypeInstance: PUGroupsWidget new;
					yourself);
				addChild: ((PRComponent named: 'persistency')
					prototypeInstance: PRPersistencySettings new;
					yourself);
				addChild: ((PRComponent named: 'kernel')
					prototypeInstance: PRKernelSettings new;
					yourself);
				addChild: ((PRComponent named: 'file')
					prototypeInstance: PRFileSettings new;
					yourself);
				addChild: ((PRComponent named: 'linkchecker')
					title: 'Link Checker';
					prototypeInstance: PULinksWidget new;
					yourself);
				contents: '!Users
+users+

!User Group
+groups+

!Persistency
+persistency+

!Kernel Settings
+kernel+

!File Settings
+file+

!Link Checker
+linkchecker+';
				yourself ]