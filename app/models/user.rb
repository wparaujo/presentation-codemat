class User < ApplicationRecord
	has_secure_password

	has_many :dojos
  has_and_belongs_to_many :theme_notifiers,
                          class_name: "Theme",
                          join_table: "notifiers_observers"
	accepts_nested_attributes_for :dojos
end
