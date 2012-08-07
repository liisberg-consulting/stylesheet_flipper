require "stylesheet_flipper/version"
require "stylesheet_flipper/railtie"
require "stylesheet_flipper/stylesheet_name_helper"
require "r2"

ActionView::Base.send :include, StylesheetFlipper::StylesheetNameHelper