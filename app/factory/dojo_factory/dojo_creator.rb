module DojoFactory
  class DojoCreator

    def self.create(params, current_user)
      new_dojo = createDojo(params)
      new_dojo.user = current_user
      return new_dojo
    end


    def self.createDojo(params)
      raise "Non implemented Method"
    end


  end
end
