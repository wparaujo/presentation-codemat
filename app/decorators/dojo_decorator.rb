class DojoDecorator < SimpleDelegator
	def type(dojo)
		if dojo.category == 'Randori'
			dojo.coding_time
           	dojo.break_time
		else
		end
	end
end