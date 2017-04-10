class DojoCreator
	def self.create_dojo(type)
		case type
		when 'randori'
			return Randori.new
		when 'kata'
			return Kata.new
		end
	end
end