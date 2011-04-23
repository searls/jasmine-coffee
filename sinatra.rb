# Sinatra is here to serve up the spec runner and dynamically compile the coffeescript to speed up our feedback loop.
# 1. Go install bundler. 
# 2. Run these from the root of the repo:
#     $ bundle install
#     $ bundle exec ruby sinatra.rb
# 3. Visit the spec runner at http://localhost:4567/SpecRunner.html
require 'sinatra'
require 'rack/coffee'

use Rack::Coffee, {
    :root => 'public',
    :urls => ['/src','/spec']
}
