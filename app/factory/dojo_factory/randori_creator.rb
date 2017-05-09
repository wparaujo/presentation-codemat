module DojoFactory
  class RandoriCreator < DojoCreator

    def self.create_dojo_category(params)
      new_dojo = Dojos::Randori.new
      new_dojo.save
      return new_dojo
    end

  end
end
