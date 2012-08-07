require 'spec_helper'
require 'stylesheet_flipper/helper'

module StylesheetFlipper
  class TestHelper; end
  StylesheetFlipper::TestHelper.send :include, StylesheetFlipper::Helper

  describe TestHelper do
    let(:helper){ TestHelper.new }
    
    it { should respond_to :stylesheet_flipper }
    it "should return 'application' for :en locale" do
      I18n.locale = :en
      helper.stylesheet_flipper.should == "application"
    end

    it "should return 'application-flipped' for :ar locale" do
      I18n.locale = :ar
      helper.stylesheet_flipper.should == "application-flipped"
    end

    it "should support :for option" do
      I18n.locale = :en
      helper.stylesheet_flipper(for: 'my_custom_css').should == "my_custom_css"
    end
  end
end