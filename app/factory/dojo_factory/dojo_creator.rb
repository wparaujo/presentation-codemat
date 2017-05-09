module DojoFactory
  class DojoCreator

    def self.create(params, current_user)
      new_dojo = Dojo.new
      new_dojo.title = params[:title]
      new_dojo.user = current_user
      new_dojo_category = createDojoCategory(params)
      new_dojo.categorizable = new_dojo_category

      return new_dojo
    end


    def self.createDojoCategory(params)
      raise "Non implemented Method"
    end


  end
end
