class Dojo < ApplicationRecord
	belongs_to :user
	self.inheritance_column = :category
end
