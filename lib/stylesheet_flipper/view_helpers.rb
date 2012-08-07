require 'stylesheet_flipper/locales'

module StylesheetFlipper
  module ViewHelpers
    def stylesheet_flipper(options = {})
      options[:for] ||= 'application'
      if StylesheetFlipper.flipped_locales.include? I18n.locale
        "#{options[:for]}-flipped"
      else
        options[:for]
      end
    end
  end
end
