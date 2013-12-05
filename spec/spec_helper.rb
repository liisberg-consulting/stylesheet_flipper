# mock up rails' I18n module
module I18n
  def self.locale
    @locale ||= :en
  end

  def self.locale=(value)
    @locale = value
  end
end