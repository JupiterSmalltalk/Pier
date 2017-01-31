templates
metaEnvironmentPage
	^ metaEnvironmentPage ifNil: [
		metaEnvironmentPage := (PRPage named: 'metaenvironment')
		title: '_Meta Environment';
"		hideFromMenus: true;"
		contents: 
'{{{<div class="container metaenvironment">
	<div class="span-24 last metaheader">
		Meta page: }}}+/system/components/breadcrumb+{{{
	</div>
	<div class="span-24 last">
		}}}+/system/contents+{{{
	</div>
</div>}}}';
		yourself ]