templates
mainTemplate
	^ mainTemplate ifNil: [
		mainTemplate := (PRPage named: 'mainTemplate')
		title: '_MainTemplate';
		contents: 
'{{{<div class="wrap">
  <div class="body">
    <div class="main">
      <h1 class="capt">}}}*>value:structure*{{{</h1>
      }}}+/system/contents+{{{
    </div>
    <div class="clear"></div>
  </div>
</div>}}}
+/system/components/notes+{{{
<div class="foot">}}}+/system/components/footer+{{{</div>}}}
+/system/components/googleanalytics+
';
		yourself ]