# Jasmine + CoffeeScript + Sinatra (w/rack-coffee) -> Fast feedback!

So, you want to use [Jasmine](http://pivotal.github.com/jasmine/) for [TDD](http://en.wikipedia.org/wiki/Test-driven_development)/[BDD](http://en.wikipedia.org/wiki/Behavior_Driven_Development) and you want to use [CoffeeScript](http://jashkenas.github.com/coffee-script/) for sparing your keyboard's poor '{' and '}' keys from any more abuse? Well, then here's a skeleton project for you!

## Get up and running

All you need to do is:

1. Install [Bundler](http://gembundler.com)
    
        gem install bundler

2. Clone this repo somewhere:
    
        git clone git://github.com/searls/jasmine-coffee.git && cd jasmine-coffee

3. Tell Bundler to install [Sinatra](http://www.sinatrarb.com/), [CoffeeScript](http://jashkenas.github.com/coffee-script/), and [rack-coffee](https://github.com/mattly/rack-coffee)
    
        bundle install
    
4. Run Sinatra to start serving up everything
    
        bundle exec ruby sinatra.rb
    
5. [Visit the spec runner](http://localhost:4567/SpecRunner.html) in your browser: 
    
        open http://localhost:4567/SpecRunner.html

Now you're cooking with gas (and perhaps trying to avoid thinking about how putting Jasmine in Coffee would actually taste).

## This project's example code

To help get you started, this project creates an example class called "[ReducesUrls](https://github.com/searls/jasmine-coffee/blob/master/public/src/reduces-urls.coffee)" with a `#reduce` method that will take a URL string and break it up into its components (e.g. host, port, query string, and a parameter object of what was on the query string). To see how it works, check out the [spec](https://github.com/searls/jasmine-coffee/blob/master/public/spec/reduces-urls-spec.coffee).

## Adding your own CoffeeScript

In short: add CoffeeScripts to `public/src` and `public/spec` with a ".coffee" extension. They'll be accessible from the web with a ".js" extension, which is how you'll want to reference them from your SpecRunner.html file. 

For example, let's say you want to write a script about pants. You would simply create a source `public/src/pants.coffee` and a spec `public/spec/pants-spec.coffee` and fill them up with CoffeeScript. Or a silly alert:

    alert "Pants!"

To see that they get loaded as *JavaScript* in the browser, the SpecRunner should include:

    <script type="text/javascript" src="src/pants.js"></script>
    <script type="text/javascript" src="spec/pants-spec.js"></script>

Upon [loading the SpecRunner in a browser](http://localhost:4567/SpecRunner.html), you should see your alert or two and, upon inspection, be able to take a look at the generated CoffeeScript. Which, at the time of this writing, would look a little like:

    (function() {
      alert("Pants!");
    }).call(this);    

## Go forth!

Now all you have to do is go write code. If you'd like an intro on getting started with Jasmine (in JavaScript), I've posted [a presentation and another example standalone project](https://github.com/searls/jasmine-intro) on github.

