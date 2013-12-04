module StylesheetFlipper
  def self.flipped_locales
    @flipped_locales ||= [:ar, :ckb, :fa, :he, :ug]
  end

  def self.flipped_locales=(value)
    raise ArgumentError.new('flipped_locales should be an array') unless value.is_a?(Array)
    value.map!(&:to_sym)
    @flipped_locales = value
  end
end