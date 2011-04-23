class window.ReducesUrls
  constructor: ->
    @URL_REGEX = ///
      (.*)://       #protocol
      ([^:\?]*)     #host
      (?::([\d]*))? #[port]
      (/[^\?]*)?    #[path]
      (?:\?(.*))?   #[query string]
    ///
    
  reduce: (url) ->
    components = url.match(@URL_REGEX)
    {
      protocol: components[1],
      host: components[2],
      port: parseInt(components[3]) || 80
      path: components[4],
      queryString: components[5],
      params: this._parameterize(components[5])      
    }
    
  _parameterize: (queryString) ->
    params = {}
    if queryString then _(queryString.split('&')).each((field) ->
      console.log(field)
      pair = field.split('=')
      params[pair[0]] = pair[1] || null
    )
    params
  