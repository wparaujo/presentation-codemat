module DojoFactory
  class RandoriCreator < DojoCreator

    def self.createDojo(params)
      newDojo = Randori.new
      newDojo.title = params[:title]
      return newDojo
    end

  end
end
