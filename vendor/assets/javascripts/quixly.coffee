Quixly = {

	init: ->
		quixlyKeyParam = 'quixly_key'
		quixlySurveyParam = 'quixly_survey'
		query = window.location.search()

		if @checkParams query, quixlyKeyParam, quixlySurveyParam
			quixlyQueryVaues = @getQuixlyQueryValues query, quixlyKeyParam, quixlySurveyParam
			@getSurvey quixlyQueryVaues

	checkParams: (query, quixlyKeyParam, quixlySurveyParam) ->
		
		individual_queries = query.split(/^\?/).pop().split '&'
		if individual_queries.length > 1
			keys = []
			for query in individual_queries
				keyValue = query.split '='
				keys.push keyValue[0]
			if keys.indexOf(quixlyKeyParam) > -1 and keys.indexOf(quixlySurveyParam) > -1
				true
			else
				false
		else
			false

	getSurvey: (quixlyQueryVaues) ->
		quixlySurveyAPI = "//localhost:3000/api/survey/?quixlyKey=#{quixlyQueryVaues.quixly_key}&quixlySurvey=#{quixlyQueryVaues.quixly_survey}"
		$.ajax({
			url: quixlySurveyAPI,
			async: true
			})

	getQuixlyQueryValues: (query, quixlyKeyParam, quixlySurveyParam) ->
		individual_queries = query.split(/^\?/).pop().split('&')
		if individual_queries.length > 1
			values = {}
			for query in individual_queries
				keyValue = query.split '='
				if keyValue[0] is quixlyKeyParam or quixlySurveyParam
					values[keyValue[0]] = keyValue[1]
			values
}

