<html>
	<head>
		<title>Search results</title>
		<meta name="layout" content="songs" />
	</head>
	<body>
		<h1>Results</h1>
		<p>Searched ${com.vgs.Artist.count()} records
		for items matching <em>${term}</em>.
		Found <strong>${artists.size()}</strong> hits.
		</p>
		<ul>
			<g:each var="artist" in="${artists}">
				<li>
					<g:link controller="artist"
						action="show" id="${artist.id}">
						${artist.name}
					</g:link>
				</li>
			</g:each>
		</ul>
		<g:link action='search'>Search Again</g:link>
	</body>
</html>

