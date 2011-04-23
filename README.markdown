# Jasmine + CoffeeScript + Sinatra (w/rack-coffee) -> Fast feedback!

So, you want to use [Jasmine](http://pivotal.github.com/jasmine/) for [TDD](http://en.wikipedia.org/wiki/Test-driven_development)/[BDD](http://en.wikipedia.org/wiki/Behavior_Driven_Development) and you want to use [CoffeeScript](http://jashkenas.github.com/coffee-script/) for sparing your keyboard's poor '{' and '}' keys from any more abuse? Well, then here's a skeleton project for you!

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

That's it! Now all you have to do is go write code. If you'd like an intro on getting started with Jasmine (in JavaScript), I've posted [a presentation and another example standalone project](https://github.com/searls/jasmine-intro) on github.

