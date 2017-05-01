module DojoFactory
  class RandoriCreator

    def self.create(title)
      newDojo = Randori.new
      newDojo.title = title
      return newDojo
    end

  end
end
