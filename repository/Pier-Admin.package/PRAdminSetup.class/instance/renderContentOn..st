rendering
renderContentOn: html
  html
    tbsContainer: [ 
      self renderTitleOn: html.
      self renderTitleStrapLineOn: html.
      self renderTabsOn: html.
      html render: selectedComponent ]