describe 'ReducesUrls - A class that extracts all the fun out of your URLs', ->
  subject = null
  beforeEach -> subject = new ReducesUrls
  
  describe '#reduce', ->
    context 'a URL with a protocol and host', ->
      result = null
      beforeEach ->
        result = subject.reduce 'http://www.pillartechnology.com'
      
      it 'identifies the host', ->
        expect(result.host).toBe('www.pillartechnology.com')
      
    
  

