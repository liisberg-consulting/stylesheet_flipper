# StylesheetFlipper

Makes your LTR stylesheet work for RTL locales and vice versa.

* Flips stylesheets on-the-fly in development mode
* Creates flipped versions during asset compilation

## Installation

Add this line to your application's Gemfile:

    gem 'stylesheet_flipper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stylesheet_flipper

## Usage

Edit your application to serve up a copy of your stylesheets with '-flipped' postfixed to the name

*app/assets/stylesheets/application.css*

    body {
      direction: ltr;
    }

*app/assets/stylesheets/application-flipped.css*

    /*
     *= require application
    */

*app/views/layouts/application.html.erb*

    <%= stylesheet_link_tag stylesheet_flipper %>

*config/environments/development.rb*

    # for flipped versions to work, we need to bundle the stylesheet in dev mode as well
    config.assets.debug = false

*config/environments/production.rb*

    config.assets.precompile += %w( application-flipped.css )

### Advanced usage

If you have stylesheets other that application.css, you can specify using

    <%= stylesheet_link_tag stylesheet_flipper(for: 'my_custom_css') %>

You can specify the locales you want flipped by adding *config/initializers/stylesheet_flipper.rb*

    StylesheetFlipper.flipped_locales = [:en, :da ...]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Run tests (`bundle exec rspec spec`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
