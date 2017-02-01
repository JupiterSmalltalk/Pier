rendering
renderTabsOn: html
  html tbsNav
    beTabs;
    beTabsLeft;
    with: [ 
          html tbsNavItem
            beActive;
            with: [ 
                  html anchor
                    callback: [ selectedComponent := components at: #'createKernel' ];
                    with: 'Create' ].
          html
            tbsNavItem: [ 
              html anchor
                callback: [ selectedComponent := components at: #'recreateKernel' ];
                with: 'Re-create' ].
          html
            tbsNavItem: [ 
              html anchor
                callback: [ selectedComponent := components at: #'admin' ];
                with: 'Admin' ].
          html
            tbsNavItem: [ 
              html anchor
                callback: [ selectedComponent := components at: #'about' ];
                with: 'About' ] ]