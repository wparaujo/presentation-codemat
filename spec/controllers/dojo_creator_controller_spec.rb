require 'rails_helper'

RSpec.describe DojoCreatorController, type: :controller do

  describe "Factory with dojoFactory" do
    it "returns Kata instance" do
      kata = DojoCreatorController.dojoFactory(:kata)
      expect(kata).to be_a(Kata)
    end

    it "returns Randori instance" do
        randori = DojoCreatorController.dojoFactory(:randori)
        expect(randori).to be_a(Randori)
    end

    it "raise excpetion if wrong type is specified" do
      expect {DojoCreatorController.dojoFactory(:undefined_type)}.to raise_error
    end

  end
end
