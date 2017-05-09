class Dojos::Randori < ApplicationRecord
	has_one :dojo, as: :categorizable, dependent: :destroy
end
