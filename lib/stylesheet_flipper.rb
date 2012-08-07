require "stylesheet_flipper/version"
require "stylesheet_flipper/railtie"
require "stylesheet_flipper/helper"
require "r2"

ActionView::Base.send :include, StylesheetFlipper::Helper