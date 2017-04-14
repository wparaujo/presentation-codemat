class User < ApplicationRecord
	has_secure_password

	has_many :dojos
	accepts_nested_attributes_for :dojos
end
