module DojoFactory
  class RandoriCreator < DojoCreator

    def self.createDojoCategory(params)
      newDojo = Dojos::Randori.new
      newDojo.save
      return newDojo
    end

  end
end
