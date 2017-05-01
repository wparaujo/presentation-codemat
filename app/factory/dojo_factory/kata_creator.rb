module DojoFactory
  class KataCreator < DojoCreator

    def self.createDojo(params)
      newDojo = Kata.new
      newDojo.title = params[:title]
      return newDojo
    end

  end
end
