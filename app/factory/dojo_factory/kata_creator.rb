module DojoFactory
  class KataCreator

    def self.create(title)
      newDojo = Kata.new
      newDojo.title = title
      return newDojo
    end

  end
end
