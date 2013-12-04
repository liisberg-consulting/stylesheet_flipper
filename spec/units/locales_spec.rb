require 'stylesheet_flipper/locales'

module StylesheetFlipper
  describe StylesheetFlipper.flipped_locales do
    it { should include(:ar) }
    it { should include(:ckb) }
    it { should include(:fa) }
    it { should include(:he) }
    it { should include(:ug) }

    it { should_not include(:en) }
    it { should_not include(:da) }
  end

  describe "setting locales" do
    it "should set flipped_locales and normalize values" do
      flipped_locales = StylesheetFlipper.flipped_locales
      StylesheetFlipper.flipped_locales = [:da, 'en']
      StylesheetFlipper.flipped_locales.should == [:da, :en]
      StylesheetFlipper.flipped_locales = flipped_locales
    end

    it "should raise argument error if invalid argument" do
      expect{ StylesheetFlipper.flipped_locales = :da }.to raise_error(ArgumentError)
    end
  end
end