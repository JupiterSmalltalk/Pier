rendering
renderContentOn: html
  html div
    class: 'adminLogin';
    with: [ 
          self renderTitleOn: html.
          self renderAssociatedInstanceLinkOn: html.
          html render: self loginComponent ]