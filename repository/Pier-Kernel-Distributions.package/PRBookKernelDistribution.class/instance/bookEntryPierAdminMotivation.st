sample content
bookEntryPierAdminMotivation
	^ (BOPortion named: 'motivation')
		type: #section;
		title: 'Motivation for the administration interface';
		contents:
'Pier Admin''s purpose is to improve the usablity of Pier''s administration features. Pier sites have traditionally included links to administrative tools within the site''s template (environment). Pier Admin instead provides an administration interface which is available from a separate url. Some of the benefits of this approach include:
# Focus the site''s template (environment) on the content of the site and not to be worried about the administrative interface.
# Simplify the site''s template definition by removing the administration tools. 
# Eliminate the concern that editing the site''s template can break the admin interface.
# Provide a consistent administration interface across all Pier sites.
# Allow separate security to be applied to the administration url.
# Provide a more intuitive interface to Pier.
@@note It is also possible to combine approaches by including some adminstration features directly in the site and use the admin UI for others.';
		yourself