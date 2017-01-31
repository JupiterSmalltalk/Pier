templates
blogTemplate
	^ blogTemplate ifNil: [
		blogTemplate := (PRPage named: 'blogTemplate')
		title: '_Blog Template';
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
			<h2 class="blogArchiveTitle">Archive</h2>
			<div class="blogArchive">}}}+/system/components/blogArchive+{{{</div>
			<h2 class="blogTagsTitle">Tags</h2>
			<div class="blogTags">}}}+/system/components/blogTags+{{{</div>
			<h2 class="blogCloudTitle">Cloud</h2>
			<div class="blogCloud">}}}+/system/components/blogCloud+{{{</div>
		</div>
	</div>
	}}}+/system/components/footer+{{{
</div>}}}
+/system/components/googleanalytics+
';
		yourself ]