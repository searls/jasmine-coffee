describe 'ReducesUrls - A class that extracts all the fun out of your URLs', ->
  subject = null
  beforeEach -> subject = new ReducesUrls
  
  describe '#reduce', ->
    result = null
    context 'a fully loaded URL', ->      
      beforeEach -> 
        result = subject.reduce 'http://www.pillartechnology.com:4567/clients?delighted=true&really=YA_RLY'
      
      it 'identifies the protocol', ->
        expect(result.protocol).toBe('http')
      
      it 'identifies the host', ->
        expect(result.host).toBe('www.pillartechnology.com')
      
      it 'identifies the port', ->
        expect(result.port).toBe(4567)
      
      it 'identifies the path', ->
        expect(result.path).toBe('/clients')
        
      it 'identifies the query string', ->
        expect(result.queryString).toBe('delighted=true&really=YA_RLY')
        
      describe 'the param object translated from the query string', ->
        params = null
        beforeEach -> params = result.params
        
        it 'populates the first param', ->
          expect(params.delighted).toBe('true')
        
        it 'populates the second param', ->
          expect(params.really).toBe('YA_RLY')
      
    context 'a URL without a port', ->
      beforeEach -> result = subject.reduce 'http://www.pillartechnology.com/index.html'
      
      it 'defaults to port 80', ->
        expect(result.port).toBe(80)
      
    context 'a URL with a query string but no path', ->
      beforeEach -> result = subject.reduce 'http://www.pillartechnology.com?you=winnar'
      
      it 'identifies no path', ->
        expect(result.path).not.toBeDefined()
      
      it 'identifies the query string', ->
        expect(result.queryString).toBe('you=winnar')
        
      it 'translates the query string to a param object', ->
        expect(result.params.you).toBe('winnar')

    context 'a URL with an empty query string', ->
      beforeEach -> result = subject.reduce 'http://www.pillartechnology.com/path?'

      it 'identifies the query string', ->
        expect(result.queryString).toBe('')
        
      it 'builds an empty params object', ->
        expect(result.params).toEqual({})
      
    context 'a query param with no value', ->
      beforeEach -> result = subject.reduce 'http://www.pillartechnology.com/path?a=&b=foo'

      it 'the empty param is null on the params object', ->
        expect(result.params.a).toBe(null)
        
      it 'a subsequent param is populated', ->
        expect(result.params.b).toBe('foo')