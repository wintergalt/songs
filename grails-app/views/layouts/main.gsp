<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
		<title><g:layoutTitle default="Grails" /></title>
		<link rel="stylesheet" href="${resource(dir:'css',file:'960.css')}" />
		<link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
		<link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
		<g:layoutHead />
		<g:javascript library="application" />
</head>
<body>
	<div>
		<div id="hd">
			<a href="<g:createLinkTo dir="/"/>">
				<img id="logo"
					src="${createLinkTo(dir: 'images',
						file: 'songslogo.png')}"
				alt="songs logo"/>
			</a>
		</div>
		<div id="bd"><!-- start body -->
			<g:layoutBody/>
		</div> <!-- end body -->
		<div id="ft">
			<div id="footerText">
				Songs Collection
				Version <g:meta name="app.version" />
				on Grails <g:meta name="app.grails.version" />
			</div>
		</div>
	</div>
</body>

</html>
