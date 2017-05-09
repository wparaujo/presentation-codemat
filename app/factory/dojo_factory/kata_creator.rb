module DojoFactory
  class KataCreator < DojoCreator

    def self.createDojoCategory(params)
      newDojo = Kata.new
      newDojo.save
      return newDojo
    end

  end
end
