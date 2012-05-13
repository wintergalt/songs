<html>
	<head>
		<title>Search results</title>
		<meta name="layout" content="songs" />
	</head>
	<body>
		<h1>Results</h1>
		<p>Searched ${com.vgs.Song.count()} records
		for items matching <em>${term}</em>.
		Found <strong>${songs.size()}</strong> hits.
		</p>
		<ul>
			<g:each var="song" in="${songs}">
				<li>
					<g:link controller="song"
						action="show" id="${song.id}">
						${song.title}
					</g:link>
				</li>
			</g:each>
		</ul>
		<g:link action='search'>Search Again</g:link>
	</body>
</html>

