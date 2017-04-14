class DojoCreatorController < ApplicationController
  DojoTypes = {
    kata: Kata,
    randori: Randori
  }

  def self.dojoFactory(type)
    if DojoTypes[type]
      return DojoTypes[type].new
    else
      raise "Undefined Dojo type"
    end

  end
end
