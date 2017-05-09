class Dojo < ApplicationRecord
	belongs_to :user

	# Was used for STI => self.inheritance_column = :category

	belongs_to :categorizable, polymorphic: true, optional: true

	# To do
	#delegate :method1 :method2, to: :dojo_category
end
