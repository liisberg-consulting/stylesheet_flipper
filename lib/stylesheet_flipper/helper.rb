module StylesheetFlipper
  module Helper
    def stylesheet_flipper(options = {})
      options[:for] ||= 'application'
      if [:ar, :ckb, :fa, :he, :ug].include? I18n.locale
        "#{options[:for]}-flipped"
      else
        options[:for]
      end
    end
  end
end
