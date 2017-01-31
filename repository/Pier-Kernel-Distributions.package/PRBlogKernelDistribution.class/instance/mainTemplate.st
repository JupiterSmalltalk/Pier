templates
mainTemplate
	^ mainTemplate ifNil: [
		mainTemplate := (PRPage named: 'mainTemplate')
		title: '_Main Template';
		contents: 
'{{{<div class="header">
	<div class="container">
		<div class="siteTitle">}}}+/system/components/sitetitle+{{{</div>
		<div class="menu">}}}+/system/components/menu|menu+{{{</div>
	</div>
</div>
<div class="container">
	<div class="column span-24 last mainbody">
		<div class="column span-15 contents">
			}}}+/system/contents+{{{
		</div>
		<div class="column span-6 prepend-3 last sidebar">
			<h2>What''s new</h2>
			<div class="blogPostTicker">}}}+/system/components/blogPostTicker+{{{</div>
			<div class="sidebarDocument">}}}+/system/components/sidebarDocumentWidget+{{{</div>
		</div>
	</div>
	}}}+/system/components/footer+{{{
</div>}}}
+/system/components/googleanalytics+
';
		yourself ]