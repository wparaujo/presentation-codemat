module DojoFactory
  class RandoriCreator < DojoCreator

    def self.createDojoCategory(params)
      newDojo = Randori.new
      newDojo.save
      return newDojo
    end

  end
end
