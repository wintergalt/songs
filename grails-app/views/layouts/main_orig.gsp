<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'960.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
		<div>
		<div id="wrap">
				<div id="songsLogo"><a href="http://localhost:8080/songs"><img src="${resource(dir:'images',file:'songslogo.png')}" alt="Songs" border="0" /></a></div>
			<div id="bd">
				<g:layoutBody />
			</div>
		</div>
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
