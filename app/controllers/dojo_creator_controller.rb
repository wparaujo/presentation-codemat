class DojoCreatorController < ApplicationController
  DojoTypes = {
    kata: Kata,
    randori: Randori
  }

  def self.dojoFactory(category, title)
    if DojoTypes[category]
       newDojo = DojoTypes[category].new
       newDojo.user = current_user.id
       newDojo.title = title

       return newDojo
    else
      raise "Undefined Dojo category"
    end

  end
end
