PRAdminHtmlDocumentSeparateBodyHeadElements only directly renders the body during a response. The head elements are stored but not rendered. Scripts within the body are also stored separately. The head elements and body scripts can then be treated separately to ensure that, for example, scripts and styles are only ever loaded once into an ajax updated page.