accessing
tabWidget2
  ^ tabWidget
    ifNil: [ 
      tabWidget := TWBSTabWidget new.
      tabWidget
        addTabWithTitle: 'Configured instances'
          component: PRAdminListConfiguredInstances new
          columnSpan: 12;
        addTabWithTitle: 'New from template'
          component: PRAdminSetupCreateKernelFromTemplate new
          columnSpan: 12;
        addTabWithTitle: 'Recreate an exported kernel'
          component: PRAdminSetupRecreateExportedKernel new
          columnSpan: 7;
        addTabWithTitle: 'Administer an existing kernel'
          component: PRAdminSetupExistingKernel new
          columnSpan: 7;
        addTabWithTitle: 'About' component: PRAdminSetupAbout new columnSpan: 7.
      tabWidget ]