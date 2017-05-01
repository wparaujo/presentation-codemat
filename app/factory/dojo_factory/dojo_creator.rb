module DojoFactory
  class DojoCreator

    def self.create(title)
      raise "Non implemented Method"
    end

  end
end



    # DojoTypes = {
    #   kata: Kata,
    #   randori: Randori
    # }

    # def self.create(category, title)
    #   if DojoTypes[category]
    #      newDojo = DojoTypes[category].new
    #      newDojo.title = title

    #      return newDojo
    #   else
    #     raise "Undefined Dojo category"
    #   end

    # end
