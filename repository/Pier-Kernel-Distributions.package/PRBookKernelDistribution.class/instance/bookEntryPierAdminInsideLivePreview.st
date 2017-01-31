sample content
bookEntryPierAdminInsideLivePreview
	^ (BOPortion named: 'inside-preview')
		type: #section;
		title: 'Providing a live preview';
		contents:
'
The aims of the preview are:
# The preview should display the site as it appears outside the administrative interface. That is the preview should not be effected by the css and javascript used in the administration interface.
# Navigating within the preview should be reflected in the administration interface. For example the selected tree node should update as the user navigates around the live preview.

The implication of Item #1 is that the preview should be displayed within an iFrame - so that it can be isolated from the css and javascript of the administration UI.
However synchronising between the iFrame and the main Pier Admin view is tricky as, by default, the request-response cycle for each will use a different Seaside render-loop, resulting in separate session state. 

The initial solution, used some javascript (below), to redirect anchor clicks in the iFrame to requests on the main window (==top.location = this.href==).  
==((html jQuery: #preview) onLoad:
==		(((html jQuery: #preview) contents find: ''body'')
==			delegate: ''a''
==			on: ''click''
==			do: ''top.location = this.href'' asFunction ))

Although this approach worked, each click caused a whole page refresh and we felt that an ajax approach would be preferable.

@@todo describe the *hijax>http://en.wikipedia.org/wiki/Hijax* approach in more detail - how ajax response is injected into the iFrame from outside. The iFrame contents doesn''t contain any javascript specific to the pier administration interface - although anchors and forms are redirected to ajax calls within the main frame.';
		yourself