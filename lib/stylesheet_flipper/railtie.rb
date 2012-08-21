require "stylesheet_flipper/view_helpers"

module StylesheetFlipper
  class Railtie < Rails::Railtie
    initializer "stylesheet_flipper.view_helpers" do
      ActionView::Base.send :include, StylesheetFlipper::ViewHelpers
    end
    initializer "stylesheet_flipper.initialize_rails", :group => :all do |app|
      app.assets.register_bundle_processor 'text/css', :stylesheet_flipper do |context, data|
        if context.logical_path.include?('-flipped')
          R2.r2 data
        else
          data
        end
      end
    end
  end
end
