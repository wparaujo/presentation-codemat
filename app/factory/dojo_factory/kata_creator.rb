module DojoFactory
  class KataCreator < DojoCreator

    def self.create_dojo_category(params)
      new_dojo = Dojos::Kata.new
      new_dojo.save
      return new_dojo
    end

  end
end
