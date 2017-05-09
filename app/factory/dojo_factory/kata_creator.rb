module DojoFactory
  class KataCreator < DojoCreator

    def self.createDojoCategory(params)
      newDojo = Dojos::Kata.new
      newDojo.save
      return newDojo
    end

  end
end
